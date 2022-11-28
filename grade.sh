# Create your grading script here

set -e

[[ -e ListExamples.java ]]

rm -rf student-submission
git clone $1 student-submission

# 1. Clone the repository of the student submission to a well-known directory name (provided in starter code)
# - Useful tools here are if and -e/-f. You can use the exit command to quit a bash script early.
# 2. Check that the student code has the correct file submitted. If they didn’t, detect and give helpful feedback about it.
# 3. Somehow get the student code and your test .java file into the same directory
# - Useful tools here might be cp and maybe mkdir
# 4. Compile your tests and the student’s code from the appropriate directory with the appropriate classpath commands. 
#    If the compilation fails, detect and give helpful feedback about it.
# - Aside from the necessary javac, useful tools here are output redirection and error codes ($?) along with if
# - This might be a time where you need to turn off set -e. Why?
# 5. Run the tests and report the grade based on the JUnit output.
# - Again output redirection will be useful, and also tools like grep could be helpful here

