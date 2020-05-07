version 1.0

task AnviScriptReformatFasta {
  input {
    Int minMinLen
    String maxMaxPercentageGaps
    String iI
    String iI
    String oO
    Boolean simplifySimplifyNames
    String prefixPrefix
    String rR
  }
  command <<<
    anvi-script-reformat-fasta \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxPercentageGaps) then ("--max-percentage-gaps " +  '"' + maxMaxPercentageGaps + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--simplify-names" false="" simplifySimplifyNames} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}