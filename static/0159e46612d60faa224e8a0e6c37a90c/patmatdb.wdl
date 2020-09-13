version 1.0

task Patmatdb {
  command <<<
    patmatdb
  >>>
  output {
    File out_stdout = stdout()
  }
}