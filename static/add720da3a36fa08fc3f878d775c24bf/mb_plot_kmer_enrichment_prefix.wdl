version 1.0

task MbPlotKmerEnrichmentPrefix {
  input {
    String? km_er
    String? start
    String mb_plot_km_er_enrichment
  }
  command <<<
    mb-plot-kmer-enrichment prefix \
      ~{mb_plot_km_er_enrichment} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""}
  >>>
  parameter_meta {
    km_er: ""
    start: ""
    mb_plot_km_er_enrichment: ""
  }
}