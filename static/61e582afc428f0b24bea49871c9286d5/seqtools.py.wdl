version 1.0

task Seqtoolspy {
  command <<<
    seqtools_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}