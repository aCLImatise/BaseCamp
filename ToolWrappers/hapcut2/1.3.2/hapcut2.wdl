version 1.0

task Hapcut2 {
  command <<<
    hapcut2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}