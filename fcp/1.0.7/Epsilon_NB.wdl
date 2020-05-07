version 1.0

task EpsilonNB.py {
  input {
    String? pythonPython
    String? epsilonEpsilonNbpY
    String? nbNbResults
    String? epsilonEpsilon
    String? resultsResultsFile
  }
  command <<<
    Epsilon-NB.py \
      ~{pythonPython} \
      ~{epsilonEpsilonNbpY} \
      ~{nbNbResults} \
      ~{epsilonEpsilon} \
      ~{resultsResultsFile}
  >>>
}