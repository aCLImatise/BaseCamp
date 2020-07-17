version 1.0

task LiftUp {
  input {
    String? no_sort
    String? gap_size
    Boolean? ignore_versions
    String? ext_gene_pred
  }
  command <<<
    liftUp \
      ~{if defined(no_sort) then ("-nosort " +  '"' + no_sort + '"') else ""} \
      ~{if defined(gap_size) then ("-gapsize " +  '"' + gap_size + '"') else ""} \
      ~{true="-ignoreVersions" false="" ignore_versions} \
      ~{if defined(ext_gene_pred) then ("-extGenePred " +  '"' + ext_gene_pred + '"') else ""}
  >>>
  parameter_meta {
    no_sort: "'t sort bed, gff, or gdup files, to save memory"
    gap_size: "contig gapsize from default"
    ignore_versions: "- Ignore NCBI-style version number in sequence ids of input files"
    ext_gene_pred: "extended genePred"
  }
}