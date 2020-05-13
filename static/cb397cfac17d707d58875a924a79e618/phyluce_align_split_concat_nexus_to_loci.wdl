version 1.0

task PhyluceAlignSplitConcatNexusToLoci {
  input {
    String nexusNexus
    String outputOutput
  }
  command <<<
    phyluce_align_split_concat_nexus_to_loci \
      ~{if defined(nexusNexus) then ("--nexus " +  '"' + nexusNexus + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}