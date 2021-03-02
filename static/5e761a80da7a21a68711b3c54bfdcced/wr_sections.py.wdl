version 1.0

task WrSectionspy {
  command <<<
    wr_sections_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}