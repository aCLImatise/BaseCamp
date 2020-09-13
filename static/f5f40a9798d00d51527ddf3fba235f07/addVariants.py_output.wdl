version 1.0

task AddVariantspyOutput {
  input {
    Boolean? v
    String? variants
    String add_variants_do_tpy
    String graph
    String var_output
  }
  command <<<
    addVariants_py output \
      ~{add_variants_do_tpy} \
      ~{graph} \
      ~{var_output} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(variants) then ("--variants " +  '"' + variants + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    variants: ""
    add_variants_do_tpy: ""
    graph: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}