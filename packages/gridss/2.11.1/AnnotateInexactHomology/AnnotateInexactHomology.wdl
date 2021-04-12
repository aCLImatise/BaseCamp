version 1.0

task AnnotateInexactHomology {
  input {
    Boolean? std_help
    String program
    String? options_dot_dot_dot
  }
  command <<<
    AnnotateInexactHomology \
      ~{program} \
      ~{options_dot_dot_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.11.1--hdfd78af_1"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    program: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}