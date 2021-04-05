version 1.0

task CheckDependenciessh {
  command <<<
    check_dependencies_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  output {
    File out_stdout = stdout()
  }
}