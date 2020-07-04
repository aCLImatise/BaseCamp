version 1.0

task GseapyReplot {
  input {
    String? in_dir
    Boolean? _outdir_gseapy
    Boolean? _format_file
    String? fs
    Int? graph
    Boolean? no_plot
    Boolean? verbose
    Float? weight
    String? height
  }
  command <<<
    gseapy replot \
      ~{height} \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{true="-o" false="" _outdir_gseapy} \
      ~{true="-f" false="" _format_file} \
      ~{if defined(fs) then ("--fs " +  '"' + fs + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{true="--no-plot" false="" no_plot} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""}
  >>>
  parameter_meta {
    in_dir: "The GSEA desktop results directroy that you want to reproduce the figure"
    _outdir_gseapy: ", --outdir         The GSEApy output directory. Default: the current working directory"
    _format_file: ", --format         File extensions supported by Matplotlib active backend, choose from {'pdf', 'png', 'jpeg','ps', 'eps','svg'}. Default: 'pdf'."
    fs: "height, --figsize width height The figsize keyword argument need two parameters to define. Default: (6.5, 6)"
    graph: "Numbers of top graphs produced. Default: 20"
    no_plot: "Speed up computing by suppressing the plot output.This is useful only if data are interested. Default: False."
    verbose: "Increase output verbosity, print out progress of your job"
    weight: "Weighted_score of rank_metrics. Please Use the same value in GSEA. Choose from (0, 1, 1.5, 2),default: 1"
    height: ""
  }
}