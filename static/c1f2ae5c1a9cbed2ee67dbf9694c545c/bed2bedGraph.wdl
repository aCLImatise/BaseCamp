version 1.0

task Bed2bedGraph.pl {
  input {
    Boolean fF
    Boolean cC
    Boolean tT
    Boolean aA
    Boolean manMan
  }
  command <<<
    bed2bedGraph.pl \
      ~{true="-f" false="" fF} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-a" false="" aA} \
      ~{true="--man" false="" manMan}
  >>>
}