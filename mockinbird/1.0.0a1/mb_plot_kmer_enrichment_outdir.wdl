version 1.0

task MbplotkmerenrichmentOutdir {
  input {
    String? start
    String? km_er
    String mb_plot_km_er_enrichment
  }
  command <<<
    mb_plot_kmer_enrichment outdir \
      ~{mb_plot_km_er_enrichment} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""}
  >>>
  parameter_meta {
    start: ""
    km_er: ""
    mb_plot_km_er_enrichment: ""
  }
  output {
    File out_stdout = stdout()
  }
}