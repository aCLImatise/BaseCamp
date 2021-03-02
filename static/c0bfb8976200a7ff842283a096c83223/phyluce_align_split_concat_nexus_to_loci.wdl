version 1.0

task PhyluceAlignSplitConcatNexusToLoci {
  input {
    File? nexus
    Directory? output_directory_store
    String split_concatenated_file
  }
  command <<<
    phyluce_align_split_concat_nexus_to_loci \
      ~{split_concatenated_file} \
      ~{if defined(nexus) then ("--nexus " +  '"' + nexus + '"') else ""} \
      ~{if defined(output_directory_store) then ("--output " +  '"' + output_directory_store + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nexus: "The input NEXUS file"
    output_directory_store: "The output directory in which to store alignments"
    split_concatenated_file: "Split a concatenated NEXUS file into component loci using the charsets values"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_store = "${in_output_directory_store}"
  }
}