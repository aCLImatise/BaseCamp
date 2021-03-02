version 1.0

task Dropletutilsscriptspostinstalltestsbats {
  command <<<
    dropletutils_scripts_post_install_tests_bats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}