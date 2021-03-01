version 1.0

task ProScrspy {
  command <<<
    ProScrs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}