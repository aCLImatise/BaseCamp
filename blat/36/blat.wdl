version 1.0

task Blat {
  input {
    String? dots
    Boolean? trim_t
    Boolean? not_rima
    Boolean? trim_hard_a
    Boolean? fast_map
    String? out
    Boolean? fine
    String? max_intron
    Boolean? extend_through_n
    String? ooc
    String database
    String query
    String output_dot_psl
  }
  command <<<
    blat \
      ~{database} \
      ~{query} \
      ~{output_dot_psl} \
      ~{if defined(dots) then ("-dots " +  '"' + dots + '"') else ""} \
      ~{true="-trimT" false="" trim_t} \
      ~{true="-noTrimA" false="" not_rima} \
      ~{true="-trimHardA" false="" trim_hard_a} \
      ~{true="-fastMap" false="" fast_map} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-fine" false="" fine} \
      ~{if defined(max_intron) then ("-maxIntron " +  '"' + max_intron + '"') else ""} \
      ~{true="-extendThroughN" false="" extend_through_n} \
      ~{if defined(ooc) then ("-ooc " +  '"' + ooc + '"') else ""}
  >>>
  parameter_meta {
    dots: "Output dot every N sequences to show program's progress."
    trim_t: "Trim leading poly-T."
    not_rima: "Don't trim trailing poly-A."
    trim_hard_a: "Remove poly-A tail from qSize as well as alignments in  psl output."
    fast_map: "Run for fast DNA/DNA remapping - not allowing introns,  requiring high %ID. Query sizes must not exceed 5000."
    out: "Controls output file format.  Type is one of: psl - Default.  Tab-separated format, no sequence pslx - Tab-separated format with sequence axt - blastz-associated axt format maf - multiz-associated maf format sim4 - similar to sim4 format wublast - similar to wublast format blast - similar to NCBI blast format blast8- NCBI blast tabular format blast9 - NCBI blast tabular format with comments"
    fine: "For high-quality mRNAs, look harder for small initial and terminal exons.  Not recommended for ESTs."
    max_intron: "Sets maximum intron size. Default is 750000."
    extend_through_n: "Allows extension of alignment through large blocks of Ns."
    ooc: ""
    database: ""
    query: ""
    output_dot_psl: ""
  }
}