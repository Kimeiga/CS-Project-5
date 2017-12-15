#include "utilities.h"
#include <iostream>

#include <cstring>


using namespace std;

const char WORDFILENAME[] = "twowords.txt";

const int MAXWORDS = 9000;

int runOneRound(const char words[][MAXWORDLEN+1], int nWords, int wordnum){


    //set round score before looping
    int roundScore = 1;

    //fail checking
    if( nWords < 0 || wordnum < 0 || wordnum >= nWords){
        return -1;
    }


    start:

    cout << "Probe word: ";

    char probeWord[MAXWORDLEN+1];


//    cin.clear();

    cin.getline(probeWord, MAXWORDLEN +1);

    if (cin.fail()) {
        cin.clear();
        cin.ignore(999, '\n');
    }

//    cin.ignore(999,'\n');
//    getline(cin,probeWord);
//    cin >> probeWord;
//

    //check for size
    if(strlen(probeWord) < MINWORDLEN || strlen(probeWord) > MAXWORDLEN){
        cout << "Your probe word must be a word of 4 to 6 lower case letters." << endl;
        //reset somehow
        goto start;
    }

    //check for lowercase only
    for (int k = 0; probeWord[k] != '\0'; k++){
        //is current char not lower
        if(islower(probeWord[k]) == 0){
            cout << "Your probe word must be a word of 4 to 6 lower case letters." << endl;
            //reset somehow
            goto start;
        }
    }


    //now check if probeword is in words[][]
    for(int k = 0; k < nWords; k++){
        if(strcmp(probeWord,words[k]) == 0){
            goto probewordchecked;
        }
    }

    //if you finished the for loop and didn't get a match, just reset
    cout << "I don't know that word." << endl;
    //reset somehow
    goto start;

    probewordchecked:

    int starNum = 0;
    int planetNum = 0;

    //find out how many iterations you have to do

    int secretLength = strlen(words[wordnum]);
    int probeLength = strlen(probeWord);


    int maxLength = secretLength > probeLength ? secretLength : probeLength;


    //make a new c string to hold the answers
    char answer[8];

    //initialize c string
    for (int l = 0; l < maxLength; ++l) {
        answer[l] = '0';
    }

    //check for stars first; they take precedence
    for(int i = 0; i < maxLength; i++){
        if(words[wordnum][i] == probeWord[i]){
            answer[i] = 's';


            starNum++;
//            continue;
        }

    }



    //check if probeWord[j] is a planet
    //check it against all chars in secret word except stars
    //so if answer[j] is an s, just skip
    for (int j = 0; j < probeLength; ++j) {
        //if the probeword letter is a star, skip
        if(answer[j] == 's'){
            continue;
        }

        //check it against all secret chars
        for (int k = 0; k < secretLength; ++k) {
            if(probeWord[j] == words[wordnum][k]){

                //if it's already been used, don't bother...
                if(answer[k] == 'p'){
                    continue;
                }

                answer[k] = 'p';


                planetNum++;

            }
        }
    }

//    for (int k = 0; answer[k] != '\0'; k++){
//        cerr << answer[k];
//    }
//    cerr << endl;

    //check if probeword is correct word
    if(strcmp(probeWord, words[wordnum]) == 0){
        //you win
        return roundScore;
    }
    else{

        //calculate stars and planets hereerere

        cout << "Stars: " << starNum << ", Planets: " << planetNum << endl;
        roundScore++;

        goto start;
    }

}

int main()
{

    char wordList[MAXWORDS][MAXWORDLEN+1];

    int n = getWords(wordList, 9000, WORDFILENAME);


    if (n < 1)
    {
        cout << "No words were loaded, so I can't play the game." << endl;
        return 0;
    }

    int roundNum;

    cout << "How many rounds do you want to play? ";
    cin >> roundNum;

    cout << "\n";

    if(roundNum < 0){
        cout << "The number of rounds must be positive." << endl;
        return 0;
    }

    int minScore = 0;
    int maxScore = 0;
    double avgScore = 0;


    cin.ignore(999,'\n');

    //do a round roundnum times
    for(int i = 0; i < roundNum; i++){

        //write Round 1
        cout << "Round " << i + 1 << endl;


        //choose a random number
        int randomIndex = randInt(0,1); //1 and 0, FIXXXXXXX

        //tell user length of secret word
        cout << "The secret word is " << (unsigned)strlen(wordList[randomIndex]) << " letters long." << endl;



        int roundScore = runOneRound(wordList, n, randomIndex);

        //if it returns -1 then terminate
        if(roundScore == -1){

            cerr << "oh no you komus" << endl;
            return 0;
        }

        cout << "You got it in " << roundScore;
        if(roundScore != 1){
            cout << " tries." << endl;
        }
        else{
            cout << " try." << endl;
        }

        if(roundScore > maxScore){
            maxScore = roundScore;
        }

        //for first min set
        if(roundScore < minScore || minScore == 0){
            minScore = roundScore;
        }

        avgScore = (avgScore * (i) + roundScore) / (i + 1);

        cout.setf(ios::fixed);
        cout.precision(2);

        cout << "Average: " << avgScore << ", minimum: " << minScore << ", maximum: " << maxScore << endl;

        cout << "\n";
    }

}