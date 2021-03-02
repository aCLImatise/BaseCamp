version 1.0

task ChainPreNet {
  input {
    String? dots
    Int? pad
    Boolean? incl_hap
    String in_dot_chain
    String target_dot_sizes
    String query_dot_sizes
  }
  command <<<
    chainPreNet \
      ~{in_dot_chain} \
      ~{target_dot_sizes} \
      ~{query_dot_sizes} \
      ~{if defined(dots) then ("-dots " +  '"' + dots + '"') else ""} \
      ~{if defined(pad) then ("-pad " +  '"' + pad + '"') else ""} \
      ~{if (incl_hap) then "-inclHap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dots: "- output a dot every so often"
    pad: "- extra to pad around blocks to decrease trash\\n(default 1)"
    incl_hap: "- include query sequences name in the form *_hap*|*_alt*.\\nNormally these are excluded from nets as being haplotype\\npseudochromosomes\\n"
    in_dot_chain: ""
    target_dot_sizes: ""
    query_dot_sizes: ""
  }
  output {
    File out_stdout = stdout()
  }
}