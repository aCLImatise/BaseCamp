version 1.0

task Shimspy {
  command <<<
    shims_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}