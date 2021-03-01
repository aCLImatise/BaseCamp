version 1.0

task IndexPepxml {
  command <<<
    index_pepxml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}