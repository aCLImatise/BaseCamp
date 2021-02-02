version 1.0

task AssemblyGetpy {
  command <<<
    assemblyGet_py
  >>>
  output {
    File out_stdout = stdout()
  }
}