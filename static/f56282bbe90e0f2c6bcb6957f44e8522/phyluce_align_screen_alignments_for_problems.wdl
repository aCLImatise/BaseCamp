version 1.0

task PhyluceAlignScreenAlignmentsForProblems {
  input {
    Directory? alignments
    Directory? directory_store_resultingalignments
    Boolean? do_not_screen_n
    Boolean? do_not_screen_x
    String? input_format
    String? verbosity
    File? log_path
    Int? cores
  }
  command <<<
    phyluce_align_screen_alignments_for_problems \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_resultingalignments) then ("--output " +  '"' + directory_store_resultingalignments + '"') else ""} \
      ~{if (do_not_screen_n) then "--do-not-screen-n" else ""} \
      ~{if (do_not_screen_x) then "--do-not-screen-x" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing alignments to be screened.\\n(default: None)"
    directory_store_resultingalignments: "The directory in which to store the resulting\\nalignments. (default: None)"
    do_not_screen_n: "Screen alignments for taxa containing ambiguous (N)\\nbases. (default: False)"
    do_not_screen_x: "Screen alignments for taxa containing ambiguous (X)\\nbases. (default: False)"
    input_format: "The input alignment format (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n(default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}