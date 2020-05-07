version 1.0

task GetSubontologyFrom.pl {
  input {
    Boolean fF
    Boolean tT
  }
  command <<<
    get_subontology_from.pl \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT}
  >>>
}