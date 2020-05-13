version 1.0

task ExtractSequence {
  input {
    Boolean aA
    Boolean bB
    Boolean arAr
    Boolean brBr
    Boolean tT
  }
  command <<<
    extractSequence \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-ar" false="" arAr} \
      ~{true="-br" false="" brBr} \
      ~{true="-t" false="" tT}
  >>>
}