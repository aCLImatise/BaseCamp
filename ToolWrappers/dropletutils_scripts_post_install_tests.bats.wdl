version 1.0

task Dropletutilsscriptspostinstalltestsbats {
  command <<<
    dropletutils_scripts_post_install_tests_bats
  >>>
  output {
    File out_stdout = stdout()
  }
}