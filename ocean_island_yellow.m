%This program builds a brighter future through Matlab code
%Authors: 

%% Initializing Variables 

%Creating variables to hold the number of people involved in our project and the total amount of money we can commit
peopleInvolved = 2000; 
moneyCommitted = 50000000; 

%% Developing Skills 

%Creating a vector to represent the skills our project will focus on
skillsVector = ["Leadership","Programming","Critical Thinking","Teamwork","Communication"]; 

%Creating a loop to iterate through each skill and calculate the amount of money committed to each skill 
for ii = 1:length(skillsVector)
    moneyCommittedToEachSkill(ii) = moneyCommitted/peopleInvolved*length(skillsVector);
end

%% Designing Curriculum 

%Creating a matrix to represent the curriculum outline 
curriculumOutline = {
"Leadership" ["Goal Setting","Motivation","Planning","Organization"];
"Programming" ["Algorithms","Data Structures","Object Oriented Programming","Matlab Programming"]; 
"Critical Thinking" ["Research","Creative Thinking","Analytical Thinking","Problem Solving"];
"Teamwork" ["Collaboration","Conflict Resolution","Accountability","Integrity"];
"Communication" ["Public Speaking","Written Communication","Verbal Communication","Listening"]
};

%Creating a nested for loop to iterate through each skill and topic in the curriculum
for ii = 1:length(skillsVector)
    for jj = 1:length(curriculumOutline{ii,2})
        %Calculating the amount of money to be allocated to each topic 
        moneyCommittedToTopic(ii,jj) = moneyCommittedToEachSkill(ii)/length(curriculumOutline{ii,2});
    end
end

%% Hiring Trainers 

%Creating a matrix to represent the trainers to be hired
trainersMatrix = {
"Leadership" ["Bob","Sally","Randy","Mary"];
"Programming" ["Tom","Ralph","Sheila","Heather"];
"Critical Thinking" ["Phil","Liz","John","Caroline"];
"Teamwork" ["Nina","Dave","Frank","Gina"];
"Communication" ["David","Alice","Connor","Beth"]
};

%Creating a loop to iterate through each skill and trainer in the matrix
for ii = 1:length(matrix)
    for jj = 1:length(trainersMatrix{ii,2})
        %Calculating the amount of money to be allocated to each trainer 
        moneyCommittedToTrainer(ii,jj) = moneyCommittedToEachSkill(ii)/length(trainersMatrix{ii,2});
    end
end

%% Implementing Training 

%Creating a vector to represent the amount of time allotted for training
timeAllotted = [20,20,20,20,20];

%Creating a loop to iterate through each skill and time allotted 
for ii = 1:length(skillsVector)
    %Calculating the amount of money to be allocated to each skill 
    moneyCommittedToTraining(ii) = moneyCommittedToEachSkill(ii)/timeAllotted(ii);
end

%% Evaluation & Results 

%Creating a matrix to represent the evaluation results 
evaluationResults = {
"Leadership" [90,85,75,87];
"Programming" [92,95,98,84];
"Critical Thinking" [89,90,87,95];
"Teamwork" [85,88,93,76];
"Communication" [87,86,90,80]
};

%Creating a loop to iterate through each skill and evaluation results 
for ii = 1:length(skillsVector)
    %Calculating the amount of money to be allocated to each evaluation result 
    moneyCommittedToEvaluation(ii) = moneyCommittedToEachSkill(ii)/length(evaluationResults{ii,2}); 
end

%% Final Thoughts 

%Creating a statement summarizing the project
finalStatement = ['This project has successfully allocated ' num2str(moneyCommitted) ' to build ' ... 
    'a brighter future for ' num2str(peopleInvolved) ' people by teaching essential '...
    'skills such as ' sprintf('%s, ',skillsVector{:}) '.']; 

%Displaying the final statement 
disp(finalStatement)