version 1.0

task IndexMzml {
  command <<<
    index_mzml
  >>>
  output {
    File out_stdout = stdout()
  }
}