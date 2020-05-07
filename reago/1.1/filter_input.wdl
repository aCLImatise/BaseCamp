version 1.0

task FilterInput.py {
  input {
    String? pythonPython
    String? filterFilterInputPy
    String? pairedPairedEnd1fasta
    String? pairedPairedEnd2fasta
    String? outputOutputDir
    String? cmCmDir
    String? cmCmToUse
    String? numNumOfCpu
  }
  command <<<
    filter_input.py \
      ~{pythonPython} \
      ~{filterFilterInputPy} \
      ~{pairedPairedEnd1fasta} \
      ~{pairedPairedEnd2fasta} \
      ~{outputOutputDir} \
      ~{cmCmDir} \
      ~{cmCmToUse} \
      ~{numNumOfCpu}
  >>>
}