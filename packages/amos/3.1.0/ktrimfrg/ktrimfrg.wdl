version 1.0

task Ktrimfrg {
  command <<<
    ktrimfrg
  >>>
  output {
    File out_stdout = stdout()
  }
}