version 1.0

task NovoalignLicenseRegisterBasename {
  input {
    String novo_align_license_register
  }
  command <<<
    novoalign-license-register basename \
      ~{novo_align_license_register}
  >>>
  parameter_meta {
    novo_align_license_register: ""
  }
}