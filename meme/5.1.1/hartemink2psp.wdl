version 1.0

task Hartemink2psp {
  input {
    String? mod
    String? epsilon
    Boolean? rev_comp
    String? width
  }
  command <<<
    hartemink2psp \
      ~{if defined(mod) then ("-mod " +  '"' + mod + '"') else ""} \
      ~{if defined(epsilon) then ("-epsilon " +  '"' + epsilon + '"') else ""} \
      ~{true="-revcomp" false="" rev_comp} \
      ~{if defined(width) then ("-width " +  '"' + width + '"') else ""}
  >>>
  parameter_meta {
    mod: "|zoops|tcm   create MEME prior for given model default: zoops"
    epsilon: "use epsilon value to rescale scores from [0..1] to [epsilon..1-epsilon] before converting to MEME priors default: 1e-200"
    rev_comp: "double-stranded Hartemink prior default: single-stranded"
    width: "motif width used to construct prior"
  }
}