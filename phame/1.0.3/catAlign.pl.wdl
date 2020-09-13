version 1.0

task CatAlignpl {
  input {
    String defined_dot
  }
  command <<<
    catAlign_pl \
      ~{defined_dot}
  >>>
  parameter_meta {
    defined_dot: "It was interpreted as a \\\"\\\" or a 0, but maybe it was a mistake."
  }
  output {
    File out_stdout = stdout()
  }
}