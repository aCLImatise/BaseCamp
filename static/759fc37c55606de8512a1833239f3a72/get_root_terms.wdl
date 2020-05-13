version 1.0

task GetRootTerms.pl {
  input {
    Boolean fF
  }
  command <<<
    get_root_terms.pl \
      ~{true="-f" false="" fF}
  >>>
}