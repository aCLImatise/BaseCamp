version 1.0

task PhyluceAlignGetRyRecodedAlignments {
  input {
    Directory? alignments
    Directory? output_directory_hold
    String? input_format
    String? output_format
    String? verbosity
    File? log_path
    Int? cores
    Boolean? binary
  }
  command <<<
    phyluce_align_get_ry_recoded_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (binary) then "--binary" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The input directory containing nexus files to filter"
    output_directory_hold: "The output directory to hold the converted nexus files"
    input_format: "The input alignment format."
    output_format: "The output alignment format."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs."
    binary: "Output alignments in binary encoding (A or G) = 1 and\\n(C or T) = 0\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_hold = "${in_output_directory_hold}"
  }
}