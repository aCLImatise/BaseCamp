version 1.0

task FcPhasedOvlpToGraphpy {
  input {
    Int? min_len
    Int? min_idt
    Boolean? lfc
  }
  command <<<
    fc_phased_ovlp_to_graph_py \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_idt) then ("--min-idt " +  '"' + min_idt + '"') else ""} \
      ~{if (lfc) then "--lfc" else ""}
  >>>
  parameter_meta {
    min_len: "minimum length of the reads to be considered for assembling (default: 4000)"
    min_idt: "minimum alignment identity of the reads to be considered for assembling (default: 96)"
    lfc: "use local flow constraint method rather than best overlap method to resolve knots in string graph (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}