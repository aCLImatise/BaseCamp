version 1.0

task AssemblyPostProcessor {
  command <<<
    AssemblyPostProcessor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}