version 1.0

task Ovcpy {
  command <<<
    ovc_py
  >>>
  output {
    File out_stdout = stdout()
  }
}