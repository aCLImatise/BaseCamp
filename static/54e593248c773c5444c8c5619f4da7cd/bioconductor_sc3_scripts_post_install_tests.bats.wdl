version 1.0

task Bioconductorsc3scriptspostinstalltestsbats {
  command <<<
    bioconductor_sc3_scripts_post_install_tests_bats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}