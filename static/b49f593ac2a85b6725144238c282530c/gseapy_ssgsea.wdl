version 1.0

task GseapySsgsea {
  input {
    File? data
    String? gmt
    Directory? _outdir_gseapy
    Boolean? _format_file
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
    Boolean? _seed_number
    Int? threads
    String job
  }
  command <<<
    gseapy ssgsea \
      ~{job} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(gmt) then ("--gmt " +  '"' + gmt + '"') else ""} \
      ~{if (_outdir_gseapy) then "-o" else ""} \
      ~{if (_format_file) then "-f" else ""} \
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
      ~{if (_seed_number) then "-s" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    data: "Input gene expression dataset file in txt format. Same\\nwith GSEA."
    gmt: "Gene set database in GMT format. Same with GSEA."
    _outdir_gseapy: ", --outdir         The GSEApy output directory. Default: the current\\nworking directory"
    _format_file: ", --format         File extensions supported by Matplotlib active\\nbackend, choose from {'pdf', 'png', 'jpeg','ps',\\n'eps','svg'}. Default: 'pdf'."
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
    _seed_number: ", --seed           Number of random seed. Default: None"
    threads: "Number of Processes you are going to use. Default: 1\\n"
    job: "Single Sample GSEA advanced arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out__outdir_gseapy = "${in__outdir_gseapy}"
  }
}