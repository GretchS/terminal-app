# Kangaroo: Ruby terminal-app

Hannah Bourke, Carl Camit, Gretchen Scott and Jared Hutchinson

## Planning Process
We brainstormed two ideas with draw.io (which helped provide us a flow-chart of smaller sub-problems):
- Coffee problem:
Problem is that you want a coffee on Monday, but have no money - so want to find the cheapest option (that isn’t 7/11) near you.
On Tuesday, you’re cashed up (got paid), and want a good coffee!!!!! Near you….
On Wednesday it’s your shout, and your friends like those weird syrup things… so you need a different option.
Coffee solution:
An app that lets you put in your particular preferences and provides you with a selection of coffee options that fit your criteria (that uses maps, but just provides a list of solutions).

- Indecisive Problem:
People can’t decide (as a group - or even individual) 
Indecisive Solution:
App asks for the alternatives
Lets people vote (if a group) on their preference (in a ranking system)
The App returns the highest rated alternative
Remove lowest ranked alternatives (if there are ties), and asks for a selection amongst those.
If stuck on a tie, force a random selection

We decided to group both concepts together into a single application, beginning development with a decision making application and leaving room to develop preferences further on.

## PROBLEM
Decision-making is a very common problem in the lives of most human beings. We can only allocate our time and/or money to so many things at any given time. Sometimes the answers are clear and obvious, other times it can be not nearly as black and white, sometimes we’re just plain lazy and would rather have a third-party decide for us. 

## SOFTWARE APPLICATION SOLUTION
Base problem: Group of individuals suggest possible options but cannot come to agreement.
 
### Our Plan:
 
Building a list of options: Request total number of users to find agreement - store number/create array of users. Each user then enters an option of their choice.
Voting: Each user then gets to rank in preference (1, 2, 3, 4, etc) on what their preferred option is.
Sorting votes: Determine ranking (cumulative scores for each option) and sort - present winner. In the case of a tie, return to previous step and request users to vote on tied options.
Random selection: If there is a second tie, the program needs to select a random winner.
End of process: The program displays a confirmation message about the idea that won (maybe include victory gif/picture if feasible).
Ideally, we want to enable the users to take a preference vote for each idea. We can fall back to a simpler method if that doesn’t pan out the way we want it to, such as a simple one vote per person system.


To construct the sections of code to enable the program to function, we will collaborate and tackle each section one step at a time. As we did for writing the pseudocode, the four of us will work separately to come up with coding solutions for each section in the planned process. We believe that we are most efficient when we operate like this, as it allows for flexibility if we need to change our plans and keeps everyone on the same page.

### THE SOLUTION
The Idea
We wanted to create an application that helps people make decisions. Because sometimes humans are indecisive and we are too lazy to make a decision for ourselves. So what better than invent a program to help us do just that? 
It has a simple interface with straightforward instructions to follow, fun for the whole family!

Premise
The premise of the Project Kangaroo is to allow all parties involved to pitch ideas in the form of text or numbers. 
This allows them to decide what they want to do, where to go, how to go about it and so on. Alternatively, they may enter numerical values to help them decide on quantities of items they want to buy/bring/do.
The users cast a vote on the idea of their choice, option with the most votes wins. The users also have the option of allowing system to randomly decide the winner if they are in a hurry or prefer not the use the voting system.

Notable Features
If there is there is a tie in the final results, the program presents the option to re-vote or select a winner at random. 
The program is built deliberately to allow complete freedom for the users to enter anything they desire. For instance if there are a bunch of comedians present, they can write different versions of the same idea that others have written. 
The onus is on the users to set whatever ideas they feel appropriate for the situation on hand. This can also make the program serve a dual-purpose of being a source of entertainment as well as having a practical purpose.

### TECHNICAL ISSUES:
We found that we had all gotten stuck on how to implement an index and value system for a possibly infinite amount of situations. Patrick helped solve infinity for us…… get whatever number the user input and use it to grab the correct item from list of options and then run the add vote method on it.

We couldn’t apply certain methods on what we believed was an instance of the class opinion, but we actually were not calling in the variables from outside the scope of the method. Then the next problem was we tried to pull individual objects from each array but we ended up pushing the old array into the new array.

We cannot figure out how to store the sorted array as individual objects, found out on the train that using a ‘!’ with a method for an array it rebuilds that array using the method.

Tried to create a method to make a new array with all the winners but it didn’t work, turns out I kept forgetting to change what we were comparing to the actual votes class variable so it was comparing object IDs.

Worked through on how to ensure the item that the user votes for is a number associated with an actual option; need to force the user to enter a numeric value and then need to check that the value is less than or equal to the length of the array containing the options (i.e., we need to ensure they are voting for an option that actually exists).

Realised we hadn’t forced any number of alternatives to be provided by the user once they had said they wanted to use the system - so need to ensure at least two alternatives are entered by users. The program prompts the user when there was a tie in the voting process and requests the user to choose either to re-vote or ask the program to generate a random winner.

If users wanted to vote on the options rather than get the randomly generated outcome, they need to create a user account (consists of user_name only). The program has no upper limit on the number of ideas you can create, but each user can only vote once for each option. We created a User class that would create the instance variables and store each user's votes. 

We weren’t able to get the planned preferential voting system to work - ran into issues trying to compare arrays so we weren’t able fully use our third class (Vote). 

There were various gems that we wanted to use, but ended up being impractical for one reason or another. We had troubles implementing a GUI for the application using ‘FX ruby’. We decided that it might be going beyond the scope of the program and would take too long to implement given our time constraints.

We selected the following gems to implement: 
TTY Prompt - removes need for validation (so went through removing validation requirements) and provides an improved user interface.
TTY Spinner - a neat piece of code that provides a simple animation while the program is ‘calculating’. 


### ETHICAL ISSUES:
The application could potentially be used in a malicious or negative way, or by a person in a depressive state (for instance, suggesting on dangerous or risky behaviour). * we should probably suggest a phone number to call if feeling this way.
DISCLAIMER: The team at Project Kangaroo assumes no responsibility for injury, loss of life or emotional damage as result of use of the program.

### Research Demonstrating Need For Decision Making app:
http://www.newyorker.com/tech/frontal-cortex/why-smart-people-are-stupid
http://empathyeducates.org/dan-ariely-are-we-in-control-of-our-own-decisions/
https://www.google.com/url?q=https://www.ted.com/talks/dan_ariely_asks_are_we_in_control_of_our_own_decisions/up-next&sa=D&ust=1502701315944000&usg=AFQjCNEA_ZXHrEHAFFWRLjk3XdAs96FmeA
