version 1.0

task IndexMzml {
  command <<<
    index_mzml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}