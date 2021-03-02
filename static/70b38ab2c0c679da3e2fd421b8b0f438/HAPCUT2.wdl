version 1.0

task HAPCUT2 {
  command <<<
    HAPCUT2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}