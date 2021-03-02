version 1.0

task Pastepy {
  command <<<
    paste_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}