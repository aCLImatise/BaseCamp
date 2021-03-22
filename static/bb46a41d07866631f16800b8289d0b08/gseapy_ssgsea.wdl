version 1.0

task GseapySsgsea {
  input {
    File? data
    String? gmt
    Directory? outdir
    Boolean? format
    Float? fs
    Int? graph
    Boolean? no_plot
    Boolean? verbose
    String? sample_norm
    Boolean? no_scale
    Int? per_mu_num
    Int? min_size
    Int? max_size
    Float? weight
    Boolean? ascending
    Boolean? seed
    Int? threads
    String job
  }
  command <<<
    gseapy ssgsea \
      ~{job} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(gmt) then ("--gmt " +  '"' + gmt + '"') else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(fs) then ("--fs " +  '"' + fs + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (no_plot) then "--no-plot" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(sample_norm) then ("--sample-norm " +  '"' + sample_norm + '"') else ""} \
      ~{if (no_scale) then "--no-scale" else ""} \
      ~{if defined(per_mu_num) then ("--permu-num " +  '"' + per_mu_num + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if (ascending) then "--ascending" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gseapy:0.10.4--py_0"
  }
  parameter_meta {
    data: "Input gene expression dataset file in txt format. Same\\nwith GSEA."
    gmt: "Gene set database in GMT format. Same with GSEA."
    outdir: "The GSEApy output directory. Default: the current\\nworking directory"
    format: "File extensions supported by Matplotlib active\\nbackend, choose from {'pdf', 'png', 'jpeg','ps',\\n'eps','svg'}. Default: 'pdf'."
    fs: "height, --figsize width height\\nThe figsize keyword argument need two parameters to\\ndefine. Default: (6.5, 6)"
    graph: "Numbers of top graphs produced. Default: 20"
    no_plot: "Speed up computing by suppressing the plot output.This\\nis useful only if data are interested. Default: False."
    verbose: "Increase output verbosity, print out progress of your"
    sample_norm: "Sample normalization method. Choose from {'rank',\\n'log', 'log_rank','custom'}. Default: rank"
    no_scale: "If the flag was set, don't normalize the enrichment\\nscores by number of genes."
    per_mu_num: "Number of random permutations. For calculating\\nesnulls. Default: 0"
    min_size: "Min size of input genes presented in Gene Sets.\\nDefault: 15"
    max_size: "Max size of input genes presented in Gene Sets.\\nDefault: 2000"
    weight: "Weighted_score of rank_metrics. For weighting input\\ngenes. Default: 0.25"
    ascending: "Rank metric sorting order. If the -a flag was chosen,\\nthen ascending equals to True. Default: False."
    seed: "Number of random seed. Default: None"
    threads: "Number of Processes you are going to use. Default: 1\\n"
    job: "Single Sample GSEA advanced arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}