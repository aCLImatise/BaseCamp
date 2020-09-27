version 1.0

task MbplotkmerlogoddsOutdir {
  input {
    String? gff
    String? km_er
    String mb_plot_km_er_log_odds
  }
  command <<<
    mb_plot_kmer_logodds outdir \
      ~{mb_plot_km_er_log_odds} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""}
  >>>
  parameter_meta {
    gff: ""
    km_er: ""
    mb_plot_km_er_log_odds: ""
  }
  output {
    File out_stdout = stdout()
  }
}