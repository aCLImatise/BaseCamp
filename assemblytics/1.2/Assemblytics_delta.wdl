version 1.0

task AssemblyticsDelta {
  command <<<
    Assemblytics delta
  >>>
  output {
    File out_stdout = stdout()
  }
}