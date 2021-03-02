version 1.0

task CircleMapBam2bam {
  input {
    Boolean? input_bam_file
    Boolean? fast_a
    Boolean? output_bam_name
    Boolean? n_hits
    Boolean? cut_off
    Boolean? min_sc
    Boolean? gap_open
    Boolean? gap_ext
    Boolean? mapq
    Boolean? edit_distance_fraction
    Boolean? split_quality
    Boolean? remap_splits
    Boolean? insert_mapq
    Boolean? std
    Boolean? sample_size
    Boolean? interval_probability
    Boolean? clustering_dist
    Boolean? only_discordant_s
    Boolean? threads
    Boolean? directory
    Boolean? verbose
    String read_extractor
  }
  command <<<
    Circle_Map bam2bam \
      ~{read_extractor} \
      ~{if (input_bam_file) then "-i" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (output_bam_name) then "--output" else ""} \
      ~{if (n_hits) then "--nhits" else ""} \
      ~{if (cut_off) then "--cut_off" else ""} \
      ~{if (min_sc) then "--min_sc" else ""} \
      ~{if (gap_open) then "--gap_open" else ""} \
      ~{if (gap_ext) then "--gap_ext" else ""} \
      ~{if (mapq) then "--mapq" else ""} \
      ~{if (edit_distance_fraction) then "--edit_distance-fraction" else ""} \
      ~{if (split_quality) then "--split_quality" else ""} \
      ~{if (remap_splits) then "--remap_splits" else ""} \
      ~{if (insert_mapq) then "--insert_mapq" else ""} \
      ~{if (std) then "--std" else ""} \
      ~{if (sample_size) then "--sample_size" else ""} \
      ~{if (interval_probability) then "--interval_probability" else ""} \
      ~{if (clustering_dist) then "--clustering_dist" else ""} \
      ~{if (only_discordant_s) then "--only_discordants" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (directory) then "--directory" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bam_file: "Input: bam file containing the reads extracted by"
    fast_a: "Input: Reference genome fasta file"
    output_bam_name: "Output BAM name"
    n_hits: "Number of realignment attempts. Default: 10"
    cut_off: "Probability cut-off for considering a soft-clipped as\\nrealigned: Default: 0.99"
    min_sc: "Minimum soft-clipped length to attempt the\\nrealignment. Default: 8"
    gap_open: "Gap open penalty in the position specific scoring\\nmatrix. Default: 5"
    gap_ext: "Gap extension penalty in the position specific scoring\\nmatrix. Default: 1"
    mapq: "Minimum mapping quality allowed in the supplementary\\nalignments. Default: 20"
    edit_distance_fraction: "Maximum edit distance fraction allowed in the first\\nrealignment. Default (0.05)"
    split_quality: "Minium split score to output an interval. Default\\n(0.0)"
    remap_splits: "Remap probabilistacally bwa-mem split reads"
    insert_mapq: "Mapq cutoff for stimating the insert size\\ndistribution. Default 60"
    std: "Standard deviations of the insert size to extend the\\nintervals. Default 5"
    sample_size: "Number of concordant reads (R2F1) to use for\\nestimating the insert size distribution. Default\\n100000"
    interval_probability: "Skip edges of the graph with a probability below the\\nthreshold. Default: 0.01"
    clustering_dist: "Cluster reads that are K nucleotides appart in the\\nsame node. Default: 500"
    only_discordant_s: "Use only discordant reads to build the graph"
    threads: "Number of threads to use.Default 1"
    directory: "Working directory, default is the working directory"
    verbose: "Verbose level, 1=error,2=warning, 3=message"
    read_extractor: "-qbam                 Input: query name sorted bam file"
  }
  output {
    File out_stdout = stdout()
  }
}