version 1.0

task Assemblypy {
  command <<<
    assembly_py
  >>>
  output {
    File out_stdout = stdout()
  }
}