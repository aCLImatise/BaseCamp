version 1.0

task GetDescendentTerms.pl {
  input {
    Boolean fF
    Boolean tT
  }
  command <<<
    get_descendent_terms.pl \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT}
  >>>
}