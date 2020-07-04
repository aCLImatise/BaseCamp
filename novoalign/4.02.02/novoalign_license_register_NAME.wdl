version 1.0

task NovoalignLicenseRegisterNAME {
  input {
    String novo_align_license_register
  }
  command <<<
    novoalign-license-register NAME \
      ~{novo_align_license_register}
  >>>
  parameter_meta {
    novo_align_license_register: ""
  }
}