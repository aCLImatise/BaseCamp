version 1.0

task BLASTN.py {
  input {
    String? pythonPython
    String? blastBlastNpy
    String? blastnBlastnPath
    String? queryQueryFile
    String? resultsResultsFile
  }
  command <<<
    BLASTN.py \
      ~{pythonPython} \
      ~{blastBlastNpy} \
      ~{blastnBlastnPath} \
      ~{queryQueryFile} \
      ~{resultsResultsFile}
  >>>
}