version 1.0

task MbPileup2sites {
  input {
    String? pilePileUpFile
  }
  command <<<
    mb-pileup2sites \
      ~{pilePileUpFile}
  >>>
}