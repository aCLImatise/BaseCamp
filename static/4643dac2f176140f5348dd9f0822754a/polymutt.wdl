version 1.0

task Polymutt {
  input {
    Boolean? rate_de_novo
    Boolean? ts_tv_de_novo
  }
  command <<<
    polymutt \
      ~{true="--rate_denovo" false="" rate_de_novo} \
      ~{true="--tstv_denovo" false="" ts_tv_de_novo}
  >>>
  parameter_meta {
    rate_de_novo: "[1.5e-08],"
    ts_tv_de_novo: "[2.00], --minLLR_denovo [-3.0e+00]"
  }
}