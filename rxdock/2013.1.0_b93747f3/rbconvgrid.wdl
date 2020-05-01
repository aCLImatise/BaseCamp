version 1.0

task Rbconvgrid {
  input {
    Boolean iI
    Boolean oO
    Boolean nN
    String? inputInputFile
    String? outputOutputFile
    String? gridGridNum
  }
  command <<<
    rbconvgrid \
      ~{inputInputFile} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{outputOutputFile} \
      ~{gridGridNum}
  >>>
}