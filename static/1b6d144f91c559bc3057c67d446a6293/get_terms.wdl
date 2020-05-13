version 1.0

task GetTerms.pl {
  input {
    Boolean fF
  }
  command <<<
    get_terms.pl \
      ~{true="-f" false="" fF}
  >>>
}