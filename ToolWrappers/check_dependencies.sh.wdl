version 1.0

task CheckDependenciessh {
  command <<<
    check_dependencies_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}