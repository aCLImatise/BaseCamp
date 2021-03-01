version 1.0

task AssemblyGetpy {
  command <<<
    assemblyGet_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}