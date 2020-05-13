version 1.0

task FilterGenesOutMRNAname.pl {
  input {
    String? filterFilterGenes
    String? nameNameFile
    String? dbfileDbfile
  }
  command <<<
    filterGenesOut_mRNAname.pl \
      ~{filterFilterGenes} \
      ~{nameNameFile} \
      ~{dbfileDbfile}
  >>>
}