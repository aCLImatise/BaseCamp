version 1.0

task Obgrep {
  command <<<
    obgrep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}