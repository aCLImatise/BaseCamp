version 1.0

task CheckDependenciessh {
  command <<<
    check_dependencies_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}