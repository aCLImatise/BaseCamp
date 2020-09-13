version 1.0

task PhyluceAlignGetInformativeSites {
  input {
    Directory? alignments
    File? the_output_filename
    String? input_format
    Int? cores
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_align_get_informative_sites \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(the_output_filename) then ("--output " +  '"' + the_output_filename + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing the alignment files"
    the_output_filename: "The output filename"
    input_format: "The input alignment format"
    cores: "The number of cores to use."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
    File out_the_output_filename = "${in_the_output_filename}"
  }
}