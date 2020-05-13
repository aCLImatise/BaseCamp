version 1.0

task ExtractUnmapped {
  input {
    Boolean aA
    Boolean bB
    Boolean arAr
    Boolean brBr
    Boolean tT
  }
  command <<<
    extractUnmapped \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-ar" false="" arAr} \
      ~{true="-br" false="" brBr} \
      ~{true="-t" false="" tT}
  >>>
}