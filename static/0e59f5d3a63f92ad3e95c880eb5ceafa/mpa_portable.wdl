version 1.0

task Mpaportable {
  command <<<
    mpa_portable
  >>>
  output {
    File out_stdout = stdout()
  }
}