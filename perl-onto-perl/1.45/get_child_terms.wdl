version 1.0

task GetChildTerms.pl {
  input {
    Boolean fF
    Boolean tT
  }
  command <<<
    get_child_terms.pl \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT}
  >>>
}