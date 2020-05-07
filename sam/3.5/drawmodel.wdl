version 1.0

task Drawmodel {
  input {
    Boolean modMod
    Boolean regReg
    Boolean freqFreq
    String? modelModelFile
    String? psfilePsfile
  }
  command <<<
    drawmodel \
      ~{modelModelFile} \
      ~{true="-mod" false="" modMod} \
      ~{true="-reg" false="" regReg} \
      ~{true="-freq" false="" freqFreq} \
      ~{psfilePsfile}
  >>>
}