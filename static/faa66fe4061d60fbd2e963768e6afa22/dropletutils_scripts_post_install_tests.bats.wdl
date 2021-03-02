version 1.0

task Dropletutilsscriptspostinstalltestsbats {
  command <<<
    dropletutils_scripts_post_install_tests_bats
  >>>
  runtime {
    docker: "quay.io/biocontainers/dropletutils-scripts:0.0.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}