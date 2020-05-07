version 1.0

task NfCoreListFilter keywords {
  input {
    String? optionsOptions
    String? filterFilterKeywords
  }
  command <<<
    nf-core list filter keywords \
      ~{optionsOptions} \
      ~{filterFilterKeywords}
  >>>
}