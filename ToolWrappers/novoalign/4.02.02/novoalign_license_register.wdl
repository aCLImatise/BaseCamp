version 1.0

task Novoalignlicenseregister {
  command <<<
    novoalign_license_register
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}