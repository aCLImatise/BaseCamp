version 1.0

task Popt {
  input {
    Boolean? s
    String rna_sub_opt
  }
  command <<<
    popt \
      ~{rna_sub_opt} \
      ~{true="-s" false="" s}
  >>>
  parameter_meta {
    s: ""
    rna_sub_opt: ""
  }
}