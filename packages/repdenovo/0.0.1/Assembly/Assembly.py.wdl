version 1.0

task Assemblypy {
  command <<<
    Assembly_py
  >>>
  output {
    File out_stdout = stdout()
  }
}