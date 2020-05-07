version 1.0

task FunannotateUtilCompare {
  input {
    Boolean inputInput
    Boolean outOut
    Boolean databaseDatabase
    Boolean cpusCpus
    Boolean runRunDnds
    Boolean goGoFdr
    Boolean heatHeatMapStdev
    Boolean numNumOrThos
    Boolean bootstrapBootstrap
    Boolean outOutGroup
    Boolean proteinProteinOrtho
    Boolean mlMlMethod
    String? compareCompare
    String? argumentsArguments
  }
  command <<<
    funannotate util compare \
      ~{compareCompare} \
      ~{true="--input" false="" inputInput} \
      ~{true="--out" false="" outOut} \
      ~{true="--database" false="" databaseDatabase} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{true="--run_dnds" false="" runRunDnds} \
      ~{true="--go_fdr" false="" goGoFdr} \
      ~{true="--heatmap_stdev" false="" heatHeatMapStdev} \
      ~{true="--num_orthos" false="" numNumOrThos} \
      ~{true="--bootstrap" false="" bootstrapBootstrap} \
      ~{true="--outgroup" false="" outOutGroup} \
      ~{true="--proteinortho" false="" proteinProteinOrtho} \
      ~{true="--ml_method" false="" mlMlMethod} \
      ~{argumentsArguments}
  >>>
}