version 1.0

task DataImportPostInstallTestsbats {
  command <<<
    data_import_post_install_tests_bats
  >>>
  output {
    File out_stdout = stdout()
  }
}