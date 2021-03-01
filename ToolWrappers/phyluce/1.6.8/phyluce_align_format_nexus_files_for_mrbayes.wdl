version 1.0

task PhyluceAlignFormatNexusFilesForMrbayes {
  input {
    File? alignments
    File? models
    File? path_output_file
    Boolean? fully_partition
    Boolean? interleave
    Boolean? unlink
  }
  command <<<
    phyluce_align_format_nexus_files_for_mrbayes \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if (fully_partition) then "--fully-partition" else ""} \
      ~{if (interleave) then "--interleave" else ""} \
      ~{if (unlink) then "--unlink" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The path to the alignments directory"
    models: "The path to the model configuration file"
    path_output_file: "The path to the output file"
    fully_partition: "Fully partition the output"
    interleave: "Interleave sequence in nexus files"
    unlink: "Unlink the models"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}