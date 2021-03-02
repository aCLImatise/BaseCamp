version 1.0

task PhyluceAlignReduceAlignmentsWithRaxml {
  input {
    Directory? alignments
    Directory? output_folder_reduced
    String? input_format
    Int? cores
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_align_reduce_alignments_with_raxml \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_folder_reduced) then ("--output " +  '"' + output_folder_reduced + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "Input folder of alignments"
    output_folder_reduced: "Output folder for reduced alignments"
    input_format: "The input alignment format"
    cores: "The number of compute cores to use"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_reduced = "${in_output_folder_reduced}"
  }
}