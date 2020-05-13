version 1.0

task BiomShowInstallInfo {
  input {
    String? optionsOptions
  }
  command <<<
    biom show-install-info \
      ~{optionsOptions}
  >>>
}