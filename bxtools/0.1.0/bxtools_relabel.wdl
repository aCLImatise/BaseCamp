version 1.0

task BxtoolsRelabel {
  input {
    Boolean? verbose
    String input_dot_bam
  }
  command <<<
    bxtools relabel \
      ~{input_dot_bam} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Select verbosity level (0-4). Default: 0"
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}