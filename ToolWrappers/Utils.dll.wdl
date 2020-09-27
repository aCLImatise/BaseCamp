version 1.0

task Utilsdll {
  command <<<
    Utils_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}