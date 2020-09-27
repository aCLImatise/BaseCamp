version 1.0

task Fixfrg {
  command <<<
    fixfrg
  >>>
  output {
    File out_stdout = stdout()
  }
}