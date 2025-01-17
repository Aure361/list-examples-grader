# Create your grading script here

# set -e

rm -rf student-submission
git clone $1 student-submission > out5.txt 2> err5.txt

echo "In student-submission"

if [[ -e student-submission/ListExamples.java ]]
then
	echo "ListExamples.java found" > out6.txt 2> err6.txt
else
	echo "ListExamples.java not found"
fi

cp TestListExamples.java student-submission/

cd student-submission/
javac -cp ".;../lib/hamcrest-core-1.3.jar;../lib/junit-4.13.2.jar" *.java
if [[ $? -eq 0 ]] 
then
	echo "ListExamples.java  compiled"
java -cp ".;../lib/junit-4.13.2.jar;../lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore TestListExamples
if [[ $? -eq 0 ]]
then
	echo "ListExamples.java passed all tests"
else
	echo "java -cp .;../lib/junit-4.13.2.jar;../lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore TestListExamples > output.txt"
	exit 1
fi

else
	echo "ListExamples.java did not compiled"
	exit 1
fi

