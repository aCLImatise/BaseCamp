version 1.0

task Acdtable {
  command <<<
    _acdtable
  >>>
  output {
    File out_stdout = stdout()
  }
}