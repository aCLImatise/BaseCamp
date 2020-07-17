version 1.0

task PhyluceAlignScreenAlignmentsForProblems {
  input {
    String? alignments
    String? directory_store_alignments
    Boolean? do_not_screen_n
    Boolean? do_not_screen_x
    String? input_format
    String? verbosity
    String? log_path
    String? cores
  }
  command <<<
    phyluce_align_screen_alignments_for_problems \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_alignments) then ("--output " +  '"' + directory_store_alignments + '"') else ""} \
      ~{true="--do-not-screen-n" false="" do_not_screen_n} \
      ~{true="--do-not-screen-x" false="" do_not_screen_x} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing alignments to be screened. (default: None)"
    directory_store_alignments: "The directory in which to store the resulting alignments. (default: None)"
    do_not_screen_n: "Screen alignments for taxa containing ambiguous (N) bases. (default: False)"
    do_not_screen_x: "Screen alignments for taxa containing ambiguous (X) bases. (default: False)"
    input_format: "The input alignment format (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for alignment. This is the number of PHYSICAL CPUs. (default: 1)"
  }
}