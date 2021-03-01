version 1.0

task GseapyGsea {
  input {
    File? data
    File? cls
    String? gmt
    String? per_mu_type
    Directory? outdir
    Boolean? format
    Float? fs
    Int? graph
    Boolean? no_plot
    Boolean? verbose
    Int? per_mu_num
    Int? min_size
    Int? max_size
    Float? weight
    Boolean? method
    Boolean? ascending
    Boolean? seed
    Int? threads
    String job
  }
  command <<<
    gseapy gsea \
      ~{job} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(cls) then ("--cls " +  '"' + cls + '"') else ""} \
      ~{if defined(gmt) then ("--gmt " +  '"' + gmt + '"') else ""} \
      ~{if defined(per_mu_type) then ("--permu-type " +  '"' + per_mu_type + '"') else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(fs) then ("--fs " +  '"' + fs + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (no_plot) then "--no-plot" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(per_mu_num) then ("--permu-num " +  '"' + per_mu_num + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (ascending) then "--ascending" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "Input gene expression dataset file in txt format.Same\\nwith GSEA."
    cls: "Input class vector (phenotype) file in CLS format.\\nSame with GSEA."
    gmt: "Gene set database in GMT format. Same with GSEA."
    per_mu_type: "Permutation type. Same with GSEA, choose from\\n{'gene_set', 'phenotype'}"
    outdir: "The GSEApy output directory. Default: the current\\nworking directory"
    format: "File extensions supported by Matplotlib active\\nbackend, choose from {'pdf', 'png', 'jpeg','ps',\\n'eps','svg'}. Default: 'pdf'."
    fs: "height, --figsize width height\\nThe figsize keyword argument need two parameters to\\ndefine. Default: (6.5, 6)"
    graph: "Numbers of top graphs produced. Default: 20"
    no_plot: "Speed up computing by suppressing the plot output.This\\nis useful only if data are interested. Default: False."
    verbose: "Increase output verbosity, print out progress of your"
    per_mu_num: "Number of random permutations. For calculating\\nesnulls. Default: 1000"
    min_size: "Min size of input genes presented in Gene Sets.\\nDefault: 15"
    max_size: "Max size of input genes presented in Gene Sets.\\nDefault: 500"
    weight: "Weighted_score of rank_metrics. For weighting input\\ngenes. Choose from {0, 1, 1.5, 2}. Default: 1"
    method: "Methods to calculate correlations of ranking metrics.\\nChoose from {'signal_to_noise', 't_test',\\n'ratio_of_classes',\\n'diff_of_classes','log2_ratio_of_classes'}. Default:\\n'log2_ratio_of_classes'"
    ascending: "Rank metric sorting order. If the -a flag was chosen,\\nthen ascending equals to True. Default: False."
    seed: "Number of random seed. Default: None"
    threads: "Number of Processes you are going to use. Default: 1\\n"
    job: "GSEA advanced arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}