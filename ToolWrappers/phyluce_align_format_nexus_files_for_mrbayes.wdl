version 1.0

task PhyluceAlignFormatNexusFilesForMrbayes {
  input {
    String? var_output
    File? alignments
    File? models
    Boolean? fully_partition
    Boolean? interleave
    Boolean? unlink
  }
  command <<<
    phyluce_align_format_nexus_files_for_mrbayes \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if (fully_partition) then "--fully-partition" else ""} \
      ~{if (interleave) then "--interleave" else ""} \
      ~{if (unlink) then "--unlink" else ""}
  >>>
  parameter_meta {
    var_output: "[--fully-partition]\\n[--interleave] [--unlink]"
    alignments: "The path to the alignments directory"
    models: "The path to the model configuration file"
    fully_partition: "Fully partition the output"
    interleave: "Interleave sequence in nexus files"
    unlink: "Unlink the models"
  }
  output {
    File out_stdout = stdout()
  }
}