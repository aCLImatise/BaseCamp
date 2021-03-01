version 1.0

task Sispy {
  command <<<
    sis_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}