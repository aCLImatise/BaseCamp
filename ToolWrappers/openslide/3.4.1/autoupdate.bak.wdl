version 1.0

task Autoupdatebak {
  command <<<
    autoupdate_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}