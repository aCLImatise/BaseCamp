version 1.0

task PrtTermspy {
  command <<<
    prt_terms_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}