version 1.0

task AmptkStats {
  input {
    Boolean? biom
    Boolean? tree
    Boolean? distance
    Boolean? out
    Boolean? ignore_otus
    String arguments
  }
  command <<<
    amptk stats \
      ~{arguments} \
      ~{if (biom) then "--biom" else ""} \
      ~{if (tree) then "--tree" else ""} \
      ~{if (distance) then "--distance" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (ignore_otus) then "--ignore_otus" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  parameter_meta {
    biom: "Input BIOM file with taxonomy and metadata (Required)"
    tree: "Phylogeny of OTUs (from amptk taxonomy) (Required)"
    distance: "Distance metric. Default: raupcrick [raupcrick,jaccard,bray,unifrac,wunifrac]"
    out: "Output base name. Default: amptk_stats"
    ignore_otus: "Drop OTUs from table before running stats"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}