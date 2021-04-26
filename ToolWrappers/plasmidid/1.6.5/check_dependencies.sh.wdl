version 1.0

task CheckDependenciessh {
  command <<<
    check_dependencies_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}