version 1.0

task RunPAMLpl {
  command <<<
    runPAML_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}