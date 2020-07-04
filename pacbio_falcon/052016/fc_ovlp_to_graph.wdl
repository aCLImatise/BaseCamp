version 1.0

task FcOvlpToGraph {
  input {
    Int? min_len
    Int? min_idt
    Boolean? lfc
    String overlap_file
  }
  command <<<
    fc_ovlp_to_graph \
      ~{overlap_file} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_idt) then ("--min_idt " +  '"' + min_idt + '"') else ""} \
      ~{true="--lfc" false="" lfc}
  >>>
  parameter_meta {
    min_len: "minimum length of the reads to be considered for assembling"
    min_idt: "minimum alignment identity of the reads to be considered for assembling"
    lfc: "use local flow constraint method rather than best overlap method to resolve knots in string graph"
    overlap_file: "a file that contains the overlap information."
  }
}