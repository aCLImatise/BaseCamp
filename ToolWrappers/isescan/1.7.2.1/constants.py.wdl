version 1.0

task Constantspy {
  command <<<
    constants_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}