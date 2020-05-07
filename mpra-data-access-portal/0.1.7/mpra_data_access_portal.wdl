version 1.0

task MpraDataAccessPortal {
  input {
    String? optionsOptions
  }
  command <<<
    mpra-data-access-portal \
      ~{optionsOptions}
  >>>
}