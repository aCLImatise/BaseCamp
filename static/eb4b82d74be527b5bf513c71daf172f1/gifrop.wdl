version 1.0

task Gifrop {
  input {
    Boolean? threads
    Boolean? no_plots
    Boolean? min_genes
    Boolean? flank_dna
    Boolean? get_islands
  }
  command <<<
    gifrop \
      ~{if (threads) then "--threads" else ""} \
      ~{if (no_plots) then "--no_plots" else ""} \
      ~{if (min_genes) then "--min_genes" else ""} \
      ~{if (flank_dna) then "--flank_dna" else ""} \
      ~{if (get_islands) then "--get_islands" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads to use for parallel abricate commands"
    no_plots: "Don't generate plots"
    min_genes: "Only return islands with greater than this many genes (4)"
    flank_dna: "output this many bases of DNA on either side of each island (0)"
    get_islands: "Run the main program to extract genomic islands"
  }
  output {
    File out_stdout = stdout()
  }
}