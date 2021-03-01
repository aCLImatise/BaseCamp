version 1.0

task Assemblypy {
  command <<<
    Assembly_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}