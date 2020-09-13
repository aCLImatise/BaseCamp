version 1.0

task AssemblyPostProcessor {
  command <<<
    AssemblyPostProcessor
  >>>
  output {
    File out_stdout = stdout()
  }
}