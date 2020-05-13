version 1.0

task GetTermSynonyms.pl {
  input {
    Boolean fF
    Boolean tT
  }
  command <<<
    get_term_synonyms.pl \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT}
  >>>
}