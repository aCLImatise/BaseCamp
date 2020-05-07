version 1.0

task Testformat2.sh {
  input {
    File? fileFile
  }
  command <<<
    testformat2.sh \
      ~{fileFile}
  >>>
}