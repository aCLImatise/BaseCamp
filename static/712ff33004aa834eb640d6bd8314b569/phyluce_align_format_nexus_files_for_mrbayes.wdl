version 1.0

task PhyluceAlignFormatNexusFilesForMrbayes {
  input {
    String? alignments
    String? models
    String? path_output_file
    Boolean? fully_partition
    Boolean? interleave
    Boolean? unlink
  }
  command <<<
    phyluce_align_format_nexus_files_for_mrbayes \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{true="--fully-partition" false="" fully_partition} \
      ~{true="--interleave" false="" interleave} \
      ~{true="--unlink" false="" unlink}
  >>>
  parameter_meta {
    alignments: "The path to the alignments directory"
    models: "The path to the model configuration file"
    path_output_file: "The path to the output file"
    fully_partition: "Fully partition the output"
    interleave: "Interleave sequence in nexus files"
    unlink: "Unlink the models"
  }
}