version 1.0

task Gifrop {
  input {
    Boolean? threads
    Boolean? no_plots
    Boolean? min_genes
    Boolean? flank_dna
    Boolean? reference
    Boolean? get_islands
    Boolean? split_islands
    Boolean? s_cut
    Boolean? t_cut
    Boolean? q_cut
  }
  command <<<
    gifrop \
      ~{if (threads) then "--threads" else ""} \
      ~{if (no_plots) then "--no_plots" else ""} \
      ~{if (min_genes) then "--min_genes" else ""} \
      ~{if (flank_dna) then "--flank_dna" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (get_islands) then "--get_islands" else ""} \
      ~{if (split_islands) then "--split_islands" else ""} \
      ~{if (s_cut) then "--scut" else ""} \
      ~{if (t_cut) then "--tcut" else ""} \
      ~{if (q_cut) then "--qcut" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0"
  }
  parameter_meta {
    threads: "Number of threads to use for parallel abricate commands"
    no_plots: "Don't generate plots"
    min_genes: "Only return islands with greater than this many genes (4)"
    flank_dna: "output this many bases of DNA on either side of each island (0)"
    reference: "Find genomic islands relative to this reference"
    get_islands: "Run the main program to extract genomic islands"
    split_islands: "Write one fasta file for each genomic island"
    s_cut: "prune edges with OC less than scut before secondary cluster (.5)"
    t_cut: "prune edges with OC less than tcut before tertiary cluster (.75)"
    q_cut: "prune edges with jaccard sim less than qcut before quat cluster (.75)"
  }
  output {
    File out_stdout = stdout()
  }
}