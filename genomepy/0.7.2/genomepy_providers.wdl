version 1.0

task GenomepyProviders {
  input {
    String? optionsOptions
  }
  command <<<
    genomepy providers \
      ~{optionsOptions}
  >>>
}