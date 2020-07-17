version 1.0

task Gifrop {
  input {
    Boolean? threads
    Boolean? no_plots
    Boolean? min_genes
    Boolean? flank_dna
    Boolean? get_islands
    String? option
  }
  command <<<
    gifrop \
      ~{option} \
      ~{true="--threads" false="" threads} \
      ~{true="--no_plots" false="" no_plots} \
      ~{true="--min_genes" false="" min_genes} \
      ~{true="--flank_dna" false="" flank_dna} \
      ~{true="--get_islands" false="" get_islands}
  >>>
  parameter_meta {
    threads: "Number of threads to use for parallel abricate commands"
    no_plots: "Don't generate plots"
    min_genes: "Only return islands with greater than this many genes (4)"
    flank_dna: "output this many bases of DNA on either side of each island (0)"
    get_islands: "Run the main program to extract genomic islands"
    option: ""
  }
}