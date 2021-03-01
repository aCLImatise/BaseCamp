version 1.0

task LynerCenter {
  command <<<
    lyner center
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}