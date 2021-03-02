version 1.0

task WrSectionspy {
  command <<<
    wr_sections_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}