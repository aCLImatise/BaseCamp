version 1.0

task AddVariants.pyOutput {
  input {
    String? variants
    Boolean? v
    String add_variants_do_tpy
    String graph
    String var_output
  }
  command <<<
    addVariants.py output \
      ~{add_variants_do_tpy} \
      ~{graph} \
      ~{var_output} \
      ~{if defined(variants) then ("--variants " +  '"' + variants + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    variants: ""
    v: ""
    add_variants_do_tpy: ""
    graph: ""
    var_output: ""
  }
}