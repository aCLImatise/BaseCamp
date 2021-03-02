version 1.0

task Flanker {
  input {
    Array[String] gene
    File? list_of_genes
    String? flank
    String? mode
    Boolean? circ
    Boolean? include_gene
    String? database
    Boolean? increase_verbosity_warnings
    File? fast_a_file
    Int? window
    Int? window_stop
    String? window_step
    Boolean? cluster
    File? outfile
    Float? threshold
    Int? threads
  }
  command <<<
    flanker \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(list_of_genes) then ("--list_of_genes " +  '"' + list_of_genes + '"') else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (circ) then "--circ" else ""} \
      ~{if (include_gene) then "--include_gene" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (increase_verbosity_warnings) then "-v" else ""} \
      ~{if defined(fast_a_file) then ("--fasta_file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(window_stop) then ("--window_stop " +  '"' + window_stop + '"') else ""} \
      ~{if defined(window_step) then ("--window_step " +  '"' + window_step + '"') else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/flanker:0.1.0--py_0"
  }
  parameter_meta {
    gene: "Gene(s) of interest (escape any special characters).\\nUse space seperation for multipe genes (default: None)"
    list_of_genes: "Line separated file containing genes of interest\\n(default: False)"
    flank: "Choose which side(s) of the gene to extract\\n(upstream/downstream/both) (default: both)"
    mode: "One of \\\"default\\\" - normal mode, \\\"mm\\\" - multi-allelic\\ncluster, or \\\"sm\\\" - salami-mode (default: default)"
    circ: "Is sequence circularised (default: False)"
    include_gene: "Include the gene of interest (default: False)"
    database: "Choose Abricate database e.g. NCBI, resfinder\\n(default: ncbi)"
    increase_verbosity_warnings: "[VERBOSE], --verbose [VERBOSE]\\nIncrease verbosity: 0 = only warnings, 1 = info, 2 =\\ndebug. No number means info. Default is no verbosity.\\n(default: 0)"
    fast_a_file: "Input fasta file (default: None)"
    window: "Length of flanking sequence/first window length\\n(default: 1000)"
    window_stop: "Final window length (default: None)"
    window_step: "Step in window sequence (default: None)"
    cluster: "Turn on clustering mode? (default: False)"
    outfile: "Prefix for the clustering file (default: out)"
    threshold: "mash distance threshold for clustering (default:\\n0.001)"
    threads: "threads for mash to use (default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}