version 1.0

task Resolvenhappy {
  command <<<
    resolvenhap_py
  >>>
  output {
    File out_stdout = stdout()
  }
}