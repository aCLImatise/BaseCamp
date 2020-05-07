version 1.0

task FcOvlpToGraph {
  input {
    Int minMinLen
    Int minMinIdt
    Boolean lfcLfc
    String? overlapOverlapFile
  }
  command <<<
    fc_ovlp_to_graph \
      ~{overlapOverlapFile} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinIdt) then ("--min_idt " +  '"' + minMinIdt + '"') else ""} \
      ~{true="--lfc" false="" lfcLfc}
  >>>
}