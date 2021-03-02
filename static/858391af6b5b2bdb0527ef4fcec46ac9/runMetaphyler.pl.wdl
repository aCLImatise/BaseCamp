version 1.0

task RunMetaphylerpl {
  input {
    String prefix_dot_classification
  }
  command <<<
    runMetaphyler_pl \
      ~{prefix_dot_classification}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix_dot_classification: "Classification results."
  }
  output {
    File out_stdout = stdout()
  }
}