version 1.0

task Rebaseextract {
  command <<<
    _rebaseextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}