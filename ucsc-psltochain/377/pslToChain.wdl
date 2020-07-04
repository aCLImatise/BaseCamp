version 1.0

task PslToChain {
  input {
    Boolean? ignore
    String psl_in
    String chain_out
  }
  command <<<
    pslToChain \
      ~{psl_in} \
      ~{chain_out} \
      ~{true="-ignore" false="" ignore}
  >>>
  parameter_meta {
    ignore: "ignore psl records with negative target strand rather than exiting"
    psl_in: ""
    chain_out: ""
  }
}