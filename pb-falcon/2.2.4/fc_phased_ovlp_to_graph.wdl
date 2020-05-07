version 1.0

task FcPhasedOvlpToGraph.py {
  input {
    Int minMinLen
    Int minMinIdt
    Boolean lfcLfc
    String? overlapOverlapFile
  }
  command <<<
    fc_phased_ovlp_to_graph.py \
      ~{overlapOverlapFile} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinIdt) then ("--min-idt " +  '"' + minMinIdt + '"') else ""} \
      ~{true="--lfc" false="" lfcLfc}
  >>>
}