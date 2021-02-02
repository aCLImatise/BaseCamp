version 1.0

task Novoalignlicenseregister {
  command <<<
    novoalign_license_register
  >>>
  output {
    File out_stdout = stdout()
  }
}