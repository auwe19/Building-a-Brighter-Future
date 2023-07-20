#include <iostream> 
#include <string>
using namespace std;

// Function declaration
void displayPrompt();
void generateIdeas();

int main() 
{ 
    cout << "Building a Brighter Future" << endl;
    
    // Display the welcome message
    cout << "Welcome to the program for creating ideas to build a brighter future!" << endl;
    
    // Generate the ideas 
    generateIdeas(); 
    
    // Display the prompt 
    displayPrompt();
    
    // Return 0 to indicate that the program ended properly 
    return 0; 
}

// Function definitions
void displayPrompt()
{ 
    // Ask the user to enter an idea 
    cout << "Please enter a great idea to build a brighter future: ";
    string userIdea;
    getline(cin, userIdea);
    
    // Display the idea
    cout << "Your idea is: " << userIdea << endl;
    
    // Ask if the user wants to enter another idea
    char userChoice;
    cout << "Do you want to enter another idea? (Y/N)";
    cin >> userChoice;
    cin.ignore();
    
    // If yes, generate more ideas 
    if (userChoice == 'Y')
    { 
        generateIdeas();
    }
}

void generateIdeas() 
{
    // List of ideas
    const int numIdeas = 6;
    string ideas[numIdeas] = {
        "Creating an app to connect people", 
        "Reducing plastic waste",
        "Providing clean water for all",
        "Developing renewable energy sources",
        "Increasing access to education",
        "Initiating healthcare reforms"
    };
    
    // Output a random idea
    int randomIndex = rand() % numIdeas;
    cout << "One great idea is: " << ideas[randomIndex] << endl;
}