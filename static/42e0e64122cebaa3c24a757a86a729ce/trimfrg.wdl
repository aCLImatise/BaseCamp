version 1.0

task Trimfrg {
  command <<<
    trimfrg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}