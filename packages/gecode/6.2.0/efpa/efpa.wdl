version 1.0

task Efpa {
  input {
    Boolean? symmetry
    String disabled
  }
  command <<<
    efpa \
      ~{disabled} \
      ~{if (symmetry) then "-symmetry" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0"
  }
  parameter_meta {
    symmetry: "(true, false) default: false\\nsymmetry variants\\n"
    disabled: "Options for Equidistant Frequency Permutation Arrays:"
  }
  output {
    File out_stdout = stdout()
  }
}