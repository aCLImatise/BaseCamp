version 1.0

task TOBIASClusterMotifs {
  input {
    Boolean mM
    Boolean tT
    Boolean distDistMethod
    Boolean clustClustMethod
    Boolean aA
    Boolean pP
    Boolean oO
    Int verbosityVerbosity
    String typeType
    String dpiDpi
    String colorColorPalette
  }
  command <<<
    TOBIAS ClusterMotifs \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{true="--dist_method" false="" distDistMethod} \
      ~{true="--clust_method" false="" clustClustMethod} \
      ~{true="-a" false="" aA} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(colorColorPalette) then ("--color_palette " +  '"' + colorColorPalette + '"') else ""}
  >>>
}