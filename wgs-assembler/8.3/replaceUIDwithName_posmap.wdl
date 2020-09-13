version 1.0

task ReplaceUIDwithNameposmap {
  command <<<
    replaceUIDwithName_posmap
  >>>
  output {
    File out_stdout = stdout()
  }
}