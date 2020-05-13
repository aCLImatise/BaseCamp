version 1.0

task PhyluceProbeGetGenomeSequencesFromBed {
  input {
    String bedBed
    String twoTwoBit
    String outputOutput
    String filterFilterMask
    Int maxMaxN
    String bufferBufferTo
  }
  command <<<
    phyluce_probe_get_genome_sequences_from_bed \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(twoTwoBit) then ("--twobit " +  '"' + twoTwoBit + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(filterFilterMask) then ("--filter-mask " +  '"' + filterFilterMask + '"') else ""} \
      ~{if defined(maxMaxN) then ("--max-n " +  '"' + maxMaxN + '"') else ""} \
      ~{if defined(bufferBufferTo) then ("--buffer-to " +  '"' + bufferBufferTo + '"') else ""}
  >>>
}