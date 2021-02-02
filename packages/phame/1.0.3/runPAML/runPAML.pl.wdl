version 1.0

task RunPAMLpl {
  command <<<
    runPAML_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}