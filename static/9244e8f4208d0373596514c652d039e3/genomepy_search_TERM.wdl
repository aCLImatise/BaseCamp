version 1.0

task GenomepySearchTERM {
  input {
    String? optionsOptions
    String? termTerm
  }
  command <<<
    genomepy search TERM \
      ~{optionsOptions} \
      ~{termTerm}
  >>>
}