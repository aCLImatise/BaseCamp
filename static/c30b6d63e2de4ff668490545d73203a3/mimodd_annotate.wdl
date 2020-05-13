version 1.0

task MimoddAnnotate {
  input {
    String ofileOfile
    Array[String]+ codonCodonTables
    String statsStats
    Boolean noNoDownstream
    Boolean noNoUpstream
    Boolean noNoIntron
    Boolean noNoIntergenic
    Boolean noNoUtr
    String udUd
    File configConfig
    String memoryMemory
    Boolean quietQuiet
    Boolean verboseVerbose
    String? inputInputFile
    String? annotationAnnotationSource
  }
  command <<<
    mimodd annotate \
      ~{inputInputFile} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(codonCodonTables) then ("--codon-tables " +  '"' + codonCodonTables + '"') else ""} \
      ~{if defined(statsStats) then ("--stats " +  '"' + statsStats + '"') else ""} \
      ~{true="--no-downstream" false="" noNoDownstream} \
      ~{true="--no-upstream" false="" noNoUpstream} \
      ~{true="--no-intron" false="" noNoIntron} \
      ~{true="--no-intergenic" false="" noNoIntergenic} \
      ~{true="--no-utr" false="" noNoUtr} \
      ~{if defined(udUd) then ("--ud " +  '"' + udUd + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{annotationAnnotationSource}
  >>>
}