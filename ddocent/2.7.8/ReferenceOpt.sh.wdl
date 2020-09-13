version 1.0

task ReferenceOptsh {
  command <<<
    ReferenceOpt_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}