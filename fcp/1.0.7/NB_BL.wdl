version 1.0

task NBBL.py {
  input {
    String? pythonPython
    String? nbNbBlpY
    String? nbNbResults
    String? blastnBlastnResults
    String? resultsResultsFile
  }
  command <<<
    NB-BL.py \
      ~{pythonPython} \
      ~{nbNbBlpY} \
      ~{nbNbResults} \
      ~{blastnBlastnResults} \
      ~{resultsResultsFile}
  >>>
}