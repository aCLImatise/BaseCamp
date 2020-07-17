version 1.0

task Ibs {
  input {
    Boolean? glf_slash_f
    Boolean? seed
  }
  command <<<
    ibs \
      ~{true="-glf/-f" false="" glf_slash_f} \
      ~{true="-seed" false="" seed}
  >>>
  parameter_meta {
    glf_slash_f: "input GLF filename:"
    seed: "ibs -seed 0 use seed for random start"
  }
}