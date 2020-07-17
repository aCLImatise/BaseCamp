version 1.0

task GseapyPrerank {
  input {
    String? rnk
    String? gmt
    String? neg__label
    Boolean? _outdir_gseapy
    Boolean? _format_file
    String? fs
    Int? graph
    Boolean? no_plot
    Boolean? verbose
    String? per_mu_num
    Int? min_size
    Int? max_size
    Float? weight
    Boolean? ascending
    Boolean? _seed_number
    String? threads
    String? neg
  }
  command <<<
    gseapy prerank \
      ~{neg} \
      ~{if defined(rnk) then ("--rnk " +  '"' + rnk + '"') else ""} \
      ~{if defined(gmt) then ("--gmt " +  '"' + gmt + '"') else ""} \
      ~{if defined(neg__label) then ("-l " +  '"' + neg__label + '"') else ""} \
      ~{true="-o" false="" _outdir_gseapy} \
      ~{true="-f" false="" _format_file} \
      ~{if defined(fs) then ("--fs " +  '"' + fs + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{true="--no-plot" false="" no_plot} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(per_mu_num) then ("--permu-num " +  '"' + per_mu_num + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{true="--ascending" false="" ascending} \
      ~{true="-s" false="" _seed_number} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    rnk: "Ranking metric file in .rnk format. Same with GSEA."
    gmt: "Gene set database in GMT format. Same with GSEA."
    neg__label: "neg, --label pos neg The phenotype label argument need two parameters to define. Default: ('Pos','Neg')"
    _outdir_gseapy: ", --outdir         The GSEApy output directory. Default: the current working directory"
    _format_file: ", --format         File extensions supported by Matplotlib active backend, choose from {'pdf', 'png', 'jpeg','ps', 'eps','svg'}. Default: 'pdf'."
    fs: "height, --figsize width height The figsize keyword argument need two parameters to define. Default: (6.5, 6)"
    graph: "Numbers of top graphs produced. Default: 20"
    no_plot: "Speed up computing by suppressing the plot output.This is useful only if data are interested. Default: False."
    verbose: "Increase output verbosity, print out progress of your job"
    per_mu_num: "Number of random permutations. For calculating esnulls. Default: 1000"
    min_size: "Min size of input genes presented in Gene Sets. Default: 15"
    max_size: "Max size of input genes presented in Gene Sets. Default: 500"
    weight: "Weighted_score of rank_metrics. For weighting input genes. Choose from {0, 1, 1.5, 2}. Default: 1"
    ascending: "Rank metric sorting order. If the -a flag was chosen, then ascending equals to True. Default: False."
    _seed_number: ", --seed           Number of random seed. Default: None"
    threads: "Number of Processes you are going to use. Default: 1"
    neg: ""
  }
}