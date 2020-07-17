version 1.0

task PhyluceAlignSplitConcatNexusToLoci {
  input {
    String? nexus
    String? output_directory_store
  }
  command <<<
    phyluce_align_split_concat_nexus_to_loci \
      ~{if defined(nexus) then ("--nexus " +  '"' + nexus + '"') else ""} \
      ~{if defined(output_directory_store) then ("--output " +  '"' + output_directory_store + '"') else ""}
  >>>
  parameter_meta {
    nexus: "The input NEXUS file"
    output_directory_store: "The output directory in which to store alignments"
  }
}