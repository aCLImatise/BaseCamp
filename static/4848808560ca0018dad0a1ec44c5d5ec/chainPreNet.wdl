version 1.0

task ChainPreNet {
  input {
    String? dots
    String? pad
    Boolean? incl_hap
    String in_dot_chain
    String target_dot_sizes
    String query_dot_sizes
    String out_dot_chain
  }
  command <<<
    chainPreNet \
      ~{in_dot_chain} \
      ~{target_dot_sizes} \
      ~{query_dot_sizes} \
      ~{out_dot_chain} \
      ~{if defined(dots) then ("-dots " +  '"' + dots + '"') else ""} \
      ~{if defined(pad) then ("-pad " +  '"' + pad + '"') else ""} \
      ~{true="-inclHap" false="" incl_hap}
  >>>
  parameter_meta {
    dots: "- output a dot every so often"
    pad: "- extra to pad around blocks to decrease trash (default 1)"
    incl_hap: "- include query sequences name in the form *_hap*|*_alt*. Normally these are excluded from nets as being haplotype pseudochromosomes"
    in_dot_chain: ""
    target_dot_sizes: ""
    query_dot_sizes: ""
    out_dot_chain: ""
  }
}