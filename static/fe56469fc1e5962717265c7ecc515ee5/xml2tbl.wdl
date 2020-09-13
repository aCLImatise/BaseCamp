version 1.0

task Xml2tbl {
  command <<<
    xml2tbl
  >>>
  output {
    File out_stdout = stdout()
  }
}