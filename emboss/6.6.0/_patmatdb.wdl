version 1.0

task Patmatdb {
  command <<<
    _patmatdb
  >>>
  output {
    File out_stdout = stdout()
  }
}