version 1.0

task GenerateVar2pepOnlypy {
  command <<<
    generate_var2pep_only_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}