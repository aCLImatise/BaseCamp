version 1.0

task Cuffmerge {
  input {
    Boolean oO
    Boolean gG
    Boolean sS
    Boolean minMinIsoformFraction
    Boolean pP
    Boolean keepKeepTmp
    String? optionsOptions
    String? assemblyAssemblyGtfListTxt
  }
  command <<<
    cuffmerge \
      ~{optionsOptions} \
      ~{true="-o" false="" oO} \
      ~{true="-g" false="" gG} \
      ~{true="-s" false="" sS} \
      ~{true="--min-isoform-fraction" false="" minMinIsoformFraction} \
      ~{true="-p" false="" pP} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{assemblyAssemblyGtfListTxt}
  >>>
}