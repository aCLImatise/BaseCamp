version 1.0

task GetParentTerms.pl {
  input {
    Boolean fF
    Boolean tT
  }
  command <<<
    get_parent_terms.pl \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT}
  >>>
}