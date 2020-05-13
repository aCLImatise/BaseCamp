version 1.0

task GetTermLocalNeighbourhood.pl {
  input {
    Boolean fF
    Boolean tT
    Boolean rR
  }
  command <<<
    get_term_local_neighbourhood.pl \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="-r" false="" rR}
  >>>
}