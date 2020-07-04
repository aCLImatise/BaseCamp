version 1.0

task PslMrnaCover {
  input {
    String? minsize
    String? list_zero
    String mrna_dot_psl
    String mrna_dot_fa
  }
  command <<<
    pslMrnaCover \
      ~{mrna_dot_psl} \
      ~{mrna_dot_fa} \
      ~{if defined(minsize) then ("-minSize " +  '"' + minsize + '"') else ""} \
      ~{if defined(list_zero) then ("-listZero " +  '"' + list_zero + '"') else ""}
  >>>
  parameter_meta {
    minsize: "- default 100.  Minimum size of mRNA considered"
    list_zero: "- List accessions that don't align in zero.tab"
    mrna_dot_psl: ""
    mrna_dot_fa: ""
  }
}