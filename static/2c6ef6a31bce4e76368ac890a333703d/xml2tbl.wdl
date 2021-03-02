version 1.0

task Xml2tbl {
  command <<<
    xml2tbl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}