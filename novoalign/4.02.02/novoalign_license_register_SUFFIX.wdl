version 1.0

task NovoalignLicenseRegisterSUFFIX {
  input {
    String novo_align_license_register
  }
  command <<<
    novoalign-license-register SUFFIX \
      ~{novo_align_license_register}
  >>>
  parameter_meta {
    novo_align_license_register: ""
  }
}