version 1.0

task Rbcalcgrid {
  input {
    Boolean oO
    Boolean rR
    Boolean pP
    Boolean gG
    Boolean bB
    String? outputOutputRoot
    String? receptorReceptorPrmFile
    String? sfpSfpRmFile
    String? gridGridStep
  }
  command <<<
    rbcalcgrid \
      ~{outputOutputRoot} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-g" false="" gG} \
      ~{true="-b" false="" bB} \
      ~{receptorReceptorPrmFile} \
      ~{sfpSfpRmFile} \
      ~{gridGridStep}
  >>>
}