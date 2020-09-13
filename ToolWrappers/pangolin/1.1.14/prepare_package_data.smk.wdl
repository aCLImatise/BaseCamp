version 1.0

task PreparePackageDatasmk {
  command <<<
    prepare_package_data_smk
  >>>
  output {
    File out_stdout = stdout()
  }
}