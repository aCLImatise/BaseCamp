version 1.0

task Rebaseextract {
  command <<<
    rebaseextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}