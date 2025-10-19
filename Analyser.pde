//analyses songs to find linguistic information
class Analyser {
  String[] slang;
  
  Analyser() {
    slang = loadStrings("colloquial_es.txt");
  }
  
  boolean isSlang(String word) {
    for(String s : slang) {
      if(word.equalsIgnoreCase(s)) return true;
    }
    return false;
  }
  
  boolean isVerb(String word) {
    return word.endsWith("ar") || word.endsWith("er") || word.endsWith("ir");
  }
  
  boolean isSubjunctive(String word) {
    return word.endsWith("e") && (word.contains("que") || word.contains("cuando"));
  }
}
