version 1.0

task CreateGspy {
  command <<<
    create_gs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}