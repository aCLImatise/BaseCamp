version 1.0

task GetObsoleteTerms.pl {
  input {
    Boolean fF
  }
  command <<<
    get_obsolete_terms.pl \
      ~{true="-f" false="" fF}
  >>>
}