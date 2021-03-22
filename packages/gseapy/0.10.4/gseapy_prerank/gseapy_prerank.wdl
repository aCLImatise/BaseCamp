version 1.0

task GseapyPrerank {
  input {
    File? rnk
    String? gmt
    String? neg__label
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
    Boolean? ascending
    Boolean? seed
    Int? threads
    String job
  }
  command <<<
    gseapy prerank \
      ~{job} \
      ~{if defined(rnk) then ("--rnk " +  '"' + rnk + '"') else ""} \
      ~{if defined(gmt) then ("--gmt " +  '"' + gmt + '"') else ""} \
      ~{if defined(neg__label) then ("-l " +  '"' + neg__label + '"') else ""} \
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
      ~{if (ascending) then "--ascending" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gseapy:0.10.4--py_0"
  }
  parameter_meta {
    rnk: "Ranking metric file in .rnk format. Same with GSEA."
    gmt: "Gene set database in GMT format. Same with GSEA."
    neg__label: "neg, --label pos neg\\nThe phenotype label argument need two parameters to\\ndefine. Default: ('Pos','Neg')"
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