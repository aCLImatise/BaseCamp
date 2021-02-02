version 1.0

task ParseSitePAMLpl {
  input {
    String defined_dot
  }
  command <<<
    parseSitePAML_pl \
      ~{defined_dot}
  >>>
  parameter_meta {
    defined_dot: "It was interpreted as a \\\"\\\" or a 0, but maybe it was a mistake."
  }
  output {
    File out_stdout = stdout()
  }
}