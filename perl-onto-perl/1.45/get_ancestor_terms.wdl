version 1.0

task GetAncestorTerms.pl {
  input {
    Boolean fF
    Boolean tT
  }
  command <<<
    get_ancestor_terms.pl \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT}
  >>>
}