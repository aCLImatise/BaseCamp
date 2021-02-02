version 1.0

task IndexPepxml {
  command <<<
    index_pepxml
  >>>
  output {
    File out_stdout = stdout()
  }
}