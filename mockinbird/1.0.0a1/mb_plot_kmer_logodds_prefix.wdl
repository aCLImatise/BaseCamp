version 1.0

task MbPlotKmerLogoddsPrefix {
  input {
    String? km_er
    String? gff
    String mb_plot_km_er_log_odds
  }
  command <<<
    mb-plot-kmer-logodds prefix \
      ~{mb_plot_km_er_log_odds} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    km_er: ""
    gff: ""
    mb_plot_km_er_log_odds: ""
  }
}