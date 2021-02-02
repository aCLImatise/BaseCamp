version 1.0

task AnnotateReferenceCoverage {
  input {
    Boolean? displays_options_specific
    String program
    String? options_dot_dot_dot
  }
  command <<<
    AnnotateReferenceCoverage \
      ~{program} \
      ~{options_dot_dot_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    program: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}