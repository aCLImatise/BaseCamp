version 1.0

task MageckGSEA {
  input {
    String? mageMageCkgSea
  }
  command <<<
    mageckGSEA \
      ~{mageMageCkgSea}
  >>>
}