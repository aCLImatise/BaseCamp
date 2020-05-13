version 1.0

task PhyluceProbeGetSubsetsOfTiledProbes {
  input {
    String probesProbes
    Array[String]+ taxTaxA
    String outputOutput
    String regexRegex
  }
  command <<<
    phyluce_probe_get_subsets_of_tiled_probes \
      ~{if defined(probesProbes) then ("--probes " +  '"' + probesProbes + '"') else ""} \
      ~{if defined(taxTaxA) then ("--taxa " +  '"' + taxTaxA + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""}
  >>>
}