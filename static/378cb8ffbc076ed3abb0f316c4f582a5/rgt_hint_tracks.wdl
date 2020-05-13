version 1.0

task RgtHintTracks {
  input {
    String organismOrganism
    File biasBiasTable
    Boolean rawRaw
    Boolean bcBc
    Boolean normNorm
    Boolean bigwigBigwig
    Boolean strandStrandSpecific
    File outputOutputLocation
    String outputOutputPrefix
  }
  command <<<
    rgt-hint tracks \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(biasBiasTable) then ("--bias-table " +  '"' + biasBiasTable + '"') else ""} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--bc" false="" bcBc} \
      ~{true="--norm" false="" normNorm} \
      ~{true="--bigWig" false="" bigwigBigwig} \
      ~{true="--strand-specific" false="" strandStrandSpecific} \
      ~{if defined(outputOutputLocation) then ("--output-location " +  '"' + outputOutputLocation + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""}
  >>>
}