version 1.0

task SparCC.py {
  input {
    String corCorFile
    String covCovFile
    String algoAlgo
    String iterIter
    String xXIter
    String theTheRsHold
    String? pythonPython
    String? sparcSparcCpy
    String? countsCountsFile
  }
  command <<<
    SparCC.py \
      ~{pythonPython} \
      ~{if defined(corCorFile) then ("--cor_file " +  '"' + corCorFile + '"') else ""} \
      ~{if defined(covCovFile) then ("--cov_file " +  '"' + covCovFile + '"') else ""} \
      ~{if defined(algoAlgo) then ("--algo " +  '"' + algoAlgo + '"') else ""} \
      ~{if defined(iterIter) then ("--iter " +  '"' + iterIter + '"') else ""} \
      ~{if defined(xXIter) then ("--xiter " +  '"' + xXIter + '"') else ""} \
      ~{if defined(theTheRsHold) then ("--thershold " +  '"' + theTheRsHold + '"') else ""} \
      ~{sparcSparcCpy} \
      ~{countsCountsFile}
  >>>
}