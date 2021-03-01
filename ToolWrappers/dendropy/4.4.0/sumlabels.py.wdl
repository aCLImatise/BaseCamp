version 1.0

task Sumlabelspy {
  command <<<
    sumlabels_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}