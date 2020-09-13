version 1.0

task LiftUp {
  input {
    Boolean? no_head
    String? dots
    Boolean? psl_q
    Boolean? axt_q
    Boolean? chain_q
    Boolean? net_q
    Boolean? waba_q
    String? no_sort
    String? gap_size
    Boolean? ignore_versions
    String? ext_gene_pred
    String drop
    String warn
  }
  command <<<
    liftUp \
      ~{drop} \
      ~{warn} \
      ~{if (no_head) then "-nohead" else ""} \
      ~{if defined(dots) then ("-dots " +  '"' + dots + '"') else ""} \
      ~{if (psl_q) then "-pslQ" else ""} \
      ~{if (axt_q) then "-axtQ" else ""} \
      ~{if (chain_q) then "-chainQ" else ""} \
      ~{if (net_q) then "-netQ" else ""} \
      ~{if (waba_q) then "-wabaQ" else ""} \
      ~{if defined(no_sort) then ("-nosort " +  '"' + no_sort + '"') else ""} \
      ~{if defined(gap_size) then ("-gapsize " +  '"' + gap_size + '"') else ""} \
      ~{if (ignore_versions) then "-ignoreVersions" else ""} \
      ~{if defined(ext_gene_pred) then ("-extGenePred " +  '"' + ext_gene_pred + '"') else ""}
  >>>
  parameter_meta {
    no_head: "No header written for .psl files"
    dots: "Output a dot every N lines processed"
    psl_q: "Lift query (rather than target) side of psl"
    axt_q: "Lift query (rather than target) side of axt"
    chain_q: "Lift query (rather than target) side of chain"
    net_q: "Lift query (rather than target) side of net"
    waba_q: "Lift query (rather than target) side of waba alignment\\n(waba lifts only work with query side at this time)"
    no_sort: "'t sort bed, gff, or gdup files, to save memory"
    gap_size: "contig gapsize from default"
    ignore_versions: "- Ignore NCBI-style version number in sequence ids of input files"
    ext_gene_pred: "extended genePred"
    drop: "- Items not in liftSpec are silently dropped from dest"
    warn: "- Items not in liftSpec are dropped.  A warning is issued"
  }
  output {
    File out_stdout = stdout()
  }
}