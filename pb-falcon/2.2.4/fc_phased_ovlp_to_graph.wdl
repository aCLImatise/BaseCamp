version 1.0

task FcPhasedOvlpToGraph.py {
  input {
    Int? min_len
    Int? min_idt
    Boolean? lfc
    String overlap_file
  }
  command <<<
    fc_phased_ovlp_to_graph.py \
      ~{overlap_file} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_idt) then ("--min-idt " +  '"' + min_idt + '"') else ""} \
      ~{true="--lfc" false="" lfc}
  >>>
  parameter_meta {
    min_len: "minimum length of the reads to be considered for assembling (default: 4000)"
    min_idt: "minimum alignment identity of the reads to be considered for assembling (default: 96)"
    lfc: "use local flow constraint method rather than best overlap method to resolve knots in string graph (default: False)"
    overlap_file: "a file that contains the overlap information."
  }
}