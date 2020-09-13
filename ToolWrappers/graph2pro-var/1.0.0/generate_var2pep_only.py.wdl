version 1.0

task GenerateVar2pepOnlypy {
  command <<<
    generate_var2pep_only_py
  >>>
  output {
    File out_stdout = stdout()
  }
}