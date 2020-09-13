version 1.0

task Assemblytics {
  command <<<
    Assemblytics
  >>>
  output {
    File out_stdout = stdout()
  }
}