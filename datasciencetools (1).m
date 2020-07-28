%CMP3746M Data Science Tools and Techniques Assessment 1:
%Candidate Name: Jayden Heanue-Smith 
%StudentID Number: 14558987


%Section I: Data Loading and Pre-Processing (30%) - Task 1:
%
%For task 1 I was required to write a script which would allow me to read
%the data which will be used throughout the assessment. The following code
%shows how I efficiently and successfully loaded the data txt.file into the
%Matlab script. 
%
opts = detectImportOptions('data_train.txt');
%
%This code above allows the user to locate a table(the various
%columns(Mpg) and rows(18) from the txt file and returns the avaiable
%importing options for the user to import the table successfully.
%For example, I could have also used 'opts.SelectedVariableNames' if needed
%to import a specific variable such as 'Horsepower' It was originally
%represented as 'Var4' in the code before I assigned the Variable name
%'Horsepower' later in the assessment.
%
data = readtable('data_train.txt',opts);
%
%This code dedicates the data set 'data_train.txt' to the variable name
%data. This means throughtout the assessmment when using this exact text
%file it will be associated to the variable 'data' whenever it is used.
%Below, the 'fprintf' function is used to print the requested information
%to the users screen in regards to the data being analyzed. In this
%instance, we are displaying the exact number of columns and rows within
%the current data set.
%
fprintf('This displays the correct number of columns %d\n',size(data, 2));
fprintf('This displays the correct number of rows %d\n' ,size(data, 1));


%Section I: Data Loading and Pre-Processing (30%) - Task 2:
%
%For Task 2 I was required to create a script which cleaned the data from
%the missing values. Therefore, when a missing value is found,then the code
%below will remove the entire row where the missing value is found.
%
data=rmmissing(data);
%
%To clean the data I have used the 'rmmissing' function which will remove
%any of the missing entries from the table. It can also remove them from
%arrays. For example: If 'rmmissing' is a table, the function will remove
%any row in data set 'data_train.txt' that contains missing data. As you
%can see, the variable name 'data' will continue to represent the txt file
%'data_train.txt'.
%
fprintf('This displays the correct number of columns %d\n',size(data, 2));
fprintf('This displays the correct number of rows %d\n' ,size(data, 1));


%Section I: Data Loading and Pre-Processing (30%) - Task 3: 
%
%For task 3 I was required to write a MATLAB script that will write and
%output the remaining rows and columns from the last step into a brand
%new dataset named 'data_train2.txt'. 
%
writetable(data,'data_train2','delimiter',' ');
%This function 'writetable' allows me to write to a file including the name
%and also the extension specified by filename. To use this the file format
%must be either a .dat .csv or in this case for me, it must be a .txt for 
%delimited text files
%
type data_train2.txt;
%
%I have used the function 'type' which allows the user to perform an
%operation on the file. The operation utlizied is to display the contents
%of the chosen file. The file operation will display the chosen file
%following 'type' which in this case is 'data_train2.txt'.
%The information displayed from the new data set will be the remaining rows
%and columns from the original dataset 'data_train.txt' after I used the
%'rmmissing' function to remove missing values from the data set.


%Section I: Data Loading and Pre-Processing (30%) - Task 4:
%
%Following the previous step I will repeat this process for the
%data_test.txt file. I will now as requested for the assessment repeat the 
%tasks 1,2 and 3 for the 'data_test.txt' file. I will go through the exact
%same process which I went through for the cleaning the data for
%'data_train.txt'. 
%
opts = detectImportOptions('data_test.txt');
%opts.VariableNames = {'
%
data = readtable('data_test.txt',opts);
%
%An alternative way of manipulating the data for Task 4: cellArray = ["Mpg"
%"cylinders" "Displacement" "Horsepower""Weight" "Acceleration""Model Year"
%"Origin" "Car Name"]; Cell arrayas can also be used to perform a similiar
%task on the dataset to achieve the same end goal with the variable names.
%
data.Properties.VariableNames = {'Mpg','Cylinders','Displacement','Horsepower','Weight','Acceleration','ModelYear','Origin','CarName'};
fprintf('This displays the correct number of columns %d\n',size(data, 2));
fprintf('This displays the correct number of rows %d\n' ,size(data, 1));
%
%The above code will print the correct number of columns and rows of the
%'data_test.txt' file. The 'rmmissing' is then used again repeating the 
%same process as before, however, it is now being actioned on the
%'data_test.txt' file.
data=rmmissing(data);
%
fprintf('This displays the correct number of columns %d\n',size(data, 2));
fprintf('This displays the correct number of rows %d\n' ,size(data, 1));
%
%writing table for data_test2
writetable(data,'data_test2', 'delimiter',' ');
type data_test2.txt;
%
opts = detectImportOptions('data_test2.txt');
%opts.VariableNames = {'
data = readtable('data_test2.txt',opts);
data.Properties.VariableNames = {'Mpg','Cylinders','Displacement','Horsepower','Weight','Acceleration','ModelYear','Origin','CarName'};
fprintf('This displays the correct number of columns %d\n',size(data, 2));
fprintf('This displays the correct number of rows %d\n' ,size(data, 1));
%
data=rmmissing(data);
%
fprintf('This displays the correct number of columns %d\n',size(data, 2));
fprintf('This displays the correct number of rows %d\n' ,size(data, 1));


%SECTION II: Statistical Analysis and Data Visualisation(30%) - Task 5: 
%
data = readtable('data_train2.txt',opts);
data.Properties.VariableNames = {'Mpg','Cylinders','Displacement','Horsepower','Weight','Acceleration','ModelYear','Origin','CarName'};
%data.Properties.VariableNames(:,1,1)
%Displaying the data for the first column Mpg as requested for task 5.
%The mean allows me to display the average of the Mpg results.
disp(mean(data.Mpg));
%The median allows me to return the median values of the element(Mpg) 
disp(median(data.Mpg));
disp(min(data.Mpg));
disp(max(data.Mpg));
disp(std(data.Mpg));
%
%Displaying the data for the sixth column Acceleration as requested for task 5.
disp(mean(data.Acceleration));
disp(median(data.Acceleration));
disp(min(data.Acceleration));
disp(max(data.Acceleration));
disp(std(data.Acceleration));
%
%Displaying the data for the fourth column Horsepower as requested for task 5.
disp(mean(data.Horsepower));
disp(median(data.Horsepower));
disp(min(data.Horsepower));
disp(max(data.Horsepower));
disp(std(data.Horsepower));
%
%Displaying the data for the fifth column Weight as requested for task 5.
disp(mean(data.Weight));
disp(median(data.Weight));
disp(min(data.Weight));
disp(max(data.Weight));
disp(std(data.Weight));
%
%data.Properties.VariableNames = {'Variables','Mean','Median','Min', 'Max', 'StandardDeviation'};
%data = table
%
data=readtable('data_train2.txt' ,detectImportOptions('data_train2.txt'));
data.Properties.VariableNames = {'Mpg','Cylinders','Displacement','Horsepower','Weight','Acceleration','ModelYear','Origin','CarName'};
%data2 =cell(4,6);
%data2 =cell2table(data2);
%std(data(:,6))});
data2 = table({mean(data.Mpg); median(data.Mpg); min(data.Mpg); max(data.Mpg); std(data.Mpg)},{mean(data.Acceleration);median(data.Acceleration); min(data.Acceleration); max(data.Acceleration); std(data.Acceleration)},{mean(data.Horsepower); median(data.Horsepower); min(data.Horsepower); max(data.Horsepower); std(data.Horsepower)},{mean(data.Weight); median(data.Weight); min(data.Weight); max(data.Weight); std(data.Weight)});
data2.Properties.VariableNames = {'Mpg','Acceleration','Horsepower', 'Weight'};
%
%table = data.Properties.VariableNames;
%data.Properties.VariableNames = 
%
%SECTION II: Statistical Analysis and Data Visualisation(30%data)
%Task 6 Write a matlab script that creates the following plots:
%figure allows us to show the results on a chart,plot graph, scatter etc.
%In the following example we are using a boxplot
figure;
boxplot(data.Mpg);
title('Box plot: Displaying data for Mpg:');
%
%title allows us to display the necessary
%
figure;
boxplot(data.Acceleration);
title('Box plot: Displaying data for Acceleration:');
%
figure;
boxplot(data.Horsepower);
title('Box plot: Displaying data for Horsepower:');
%
figure;
boxplot(data.Weight);
title('Box plot: Displaying data for Weight:');
%
figure;
scatter(data.Acceleration, data.Mpg);
title('Mpg vs accelaration');
%
figure;
scatter(data.Horsepower, data.Mpg);
title('Horsepower vs Mpg');
%
figure;
scatter(data.Weight, data.Horsepower);
title('Weight vs Horsepower');
%
%Section III: Regression Analysis (40%) - Task 7:
%Write a MATLAB script to perform linear regression between 
%the following variables: a) ‘acceleration’ vs ‘mpg’
%
%R = corrcoef((data.Acceleration - mean(data.Acceleration)),(data.Mpg - mean(data.Mpg)))/sqrt(data.Acceleration - mean(data.Acceleration)^2)*(data.Mpg - mean(data.Mpg)^2);
%
%sum1 = sum(data.Acceleration - mean(data.Acceleration));
%sum2 = sum(data.Mpg - mean(data.Mpg));
%
%sum3 = sum(sum1, sum2);
%sum3 = sum(sum1, sum2)/sqrt(sum1)^2*(sum2)^2;
%
%data2 = fitlm(Data.acceleration, data.mpg);
lineaerReg7 = fitlm(data.Acceleration, data.Mpg);
%
%%Section III: Regression Analysis (40%) - Task 8:
%
data=readtable('data_test2.txt' ,detectImportOptions('data_test2.txt'));
data.Properties.VariableNames = {'Mpg','Cylinders','Displacement','Horsepower','Weight','Acceleration','ModelYear','Origin','CarName'};
%
lineaerReg8 = fitlm(data.Acceleration, data.Mpg);
%
%scatter(data.Acceleration, data.Mpg);
%plot(data.Acceleration, data.Mpg, 'r-');
%
%Performing the least square error function on the acceleration and Mpg.
%This function 'immse' will allow us to efficiently calculate the
%mean squared error. This would be between two values(x,y) which are in
%this example (x)data.Acceleration, (y)data.Mpg
leastsquare7 = immse(data.Acceleration, data.Mpg);
%
%Task 9 - Write a MATLAB script to perform linear regression between the following variables:
%
lineaerReg9 = fitlm(data.Horsepower, data.Mpg);
leastsquare9 = immse(data.Horsepower, data.Mpg);
%
%Task 11 - Write a MATLAB script to perform linear regression between the following variables:
%
%

