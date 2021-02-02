version 1.0

task Autoheaderbak {
  command <<<
    autoheader_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}