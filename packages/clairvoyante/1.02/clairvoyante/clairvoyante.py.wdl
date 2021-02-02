version 1.0

task Clairvoyantepy {
  command <<<
    clairvoyante_py
  >>>
  output {
    File out_stdout = stdout()
  }
}