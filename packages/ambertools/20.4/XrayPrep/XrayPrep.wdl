version 1.0

task XrayPrep {
  command <<<
    XrayPrep
  >>>
  output {
    File out_stdout = stdout()
  }
}