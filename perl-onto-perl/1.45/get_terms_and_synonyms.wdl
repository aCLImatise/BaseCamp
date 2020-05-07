version 1.0

task GetTermsAndSynonyms.pl {
  input {
    Boolean fF
  }
  command <<<
    get_terms_and_synonyms.pl \
      ~{true="-f" false="" fF}
  >>>
}