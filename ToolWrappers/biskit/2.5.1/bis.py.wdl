version 1.0

task Bispy {
  command <<<
    bis_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}