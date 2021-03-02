version 1.0

task Hartemink2psp {
  input {
    String? mod
    Float? epsilon
    Boolean? rev_comp
    String? width
  }
  command <<<
    hartemink2psp \
      ~{if defined(mod) then ("-mod " +  '"' + mod + '"') else ""} \
      ~{if defined(epsilon) then ("-epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if (rev_comp) then "-revcomp" else ""} \
      ~{if defined(width) then ("-width " +  '"' + width + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    mod: "|zoops|tcm   create MEME prior for given model\\ndefault: zoops"
    epsilon: "use epsilon value to rescale scores\\nfrom [0..1] to [epsilon..1-epsilon]\\nbefore converting to MEME priors\\ndefault: 1e-200"
    rev_comp: "double-stranded Hartemink prior\\ndefault: single-stranded"
    width: "motif width used to construct prior"
  }
  output {
    File out_stdout = stdout()
  }
}