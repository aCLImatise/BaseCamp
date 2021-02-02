version 1.0

task Transposcope {
  command <<<
    transposcope
  >>>
  output {
    File out_stdout = stdout()
  }
}