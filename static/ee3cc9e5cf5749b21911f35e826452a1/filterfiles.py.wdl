version 1.0

task Filterfilespy {
  command <<<
    filterfiles_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}