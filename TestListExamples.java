import static org.junit.Assert.*;
import org.junit.*;
import java.util.List;
import java.util.ArrayList;

class containsLetterA implements StringChecker {

  public boolean checkString(String s) {
    return s.contains("A");
  }
}

public class TestListExamples {
  // Write your grading tests here!
  @Test
  public void testFilter() {
	  List<String> result = new ArrayList<String>();	
	  result.add("Aurelio");
	  result.add("aurelio");
	  result.add("nope");

	  List<String> expected = new ArrayList<String>();
	  expected.add("Aurelio");
	  
	  assertEquals(expected, ListExamples.filter(result, new containsLetterA()));
  }
  @Test
  public void testMerge() {
	  List<String> result1 = new ArrayList<String>();
	  result1.add("a");
	  result1.add("b");
	  List<String> result2 = new ArrayList<String>();
	  result2.add("c");
	  result2.add("d");
	  result2.add("e");
	  List<String> expected = new ArrayList<String>();
	  expected.add("a");
	  expected.add("b");
	  expected.add("c");
	  expected.add("d");
	  expected.add("e");
	  assertEquals(expected, ListExamples.merge(result1, result2));
  }
}
//javac -cp .:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar *.java
//java -cp .:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples