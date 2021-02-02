version 1.0

task Dbicadmin {
  command <<<
    dbicadmin
  >>>
  output {
    File out_stdout = stdout()
  }
}