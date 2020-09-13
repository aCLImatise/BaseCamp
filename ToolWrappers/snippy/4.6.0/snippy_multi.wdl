version 1.0

task Snippymulti {
  command <<<
    snippy_multi
  >>>
  output {
    File out_stdout = stdout()
  }
}