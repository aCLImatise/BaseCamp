version 1.0

task Genomedataloaddata {
  input {
    Boolean? verbose
    String? option_dot_dot_dot
    String genome_data_file
    String track_name
  }
  command <<<
    genomedata_load_data \
      ~{option_dot_dot_dot} \
      ~{genome_data_file} \
      ~{track_name} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print status and diagnostic messages"
    option_dot_dot_dot: ""
    genome_data_file: ""
    track_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}