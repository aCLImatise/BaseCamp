version 1.0

task PreparePackageDatasmk {
  command <<<
    prepare_package_data_smk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}