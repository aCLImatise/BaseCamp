version 1.0

task ReplaceUIDwithNameposmap {
  command <<<
    replaceUIDwithName_posmap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}