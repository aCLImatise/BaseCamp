version 1.0

task GseapyEnrichr {
  input {
    String? input_list
    String? gene_sets
    String? organism
    String? description
    Float? cut_off
    String? background
    Int? top_term
    Boolean? _outdir_gseapy
    Boolean? _format_file
    String? fs
    Int? graph
    Boolean? no_plot
    Boolean? verbose
  }
  command <<<
    gseapy enrichr \
      ~{if defined(input_list) then ("--input-list " +  '"' + input_list + '"') else ""} \
      ~{if defined(gene_sets) then ("--gene-sets " +  '"' + gene_sets + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(cut_off) then ("--cut-off " +  '"' + cut_off + '"') else ""} \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if defined(top_term) then ("--top-term " +  '"' + top_term + '"') else ""} \
      ~{true="-o" false="" _outdir_gseapy} \
      ~{true="-f" false="" _format_file} \
      ~{if defined(fs) then ("--fs " +  '"' + fs + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{true="--no-plot" false="" no_plot} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    input_list: "Enrichr uses a list of gene names as input."
    gene_sets: "Enrichr library name(s) required. Separate each name by comma."
    organism: "Enrichr supported organism name. Default: human. See here: https://amp.pharm.mssm.edu/modEnrichr."
    description: "It is recommended to enter a short description for your list so that multiple lists can be differentiated from each other if you choose to save or share your list."
    cut_off: "Adjust-Pval cutoff, used for generating plots. Default: 0.05."
    background: "BioMart Dataset name or Background total genes number. Default: None"
    top_term: "Numbers of top terms shown in the plot. Default: 10"
    _outdir_gseapy: ", --outdir         The GSEApy output directory. Default: the current working directory"
    _format_file: ", --format         File extensions supported by Matplotlib active backend, choose from {'pdf', 'png', 'jpeg','ps', 'eps','svg'}. Default: 'pdf'."
    fs: "height, --figsize width height The figsize keyword argument need two parameters to define. Default: (6.5, 6)"
    graph: "Numbers of top graphs produced. Default: 20"
    no_plot: "Speed up computing by suppressing the plot output.This is useful only if data are interested. Default: False."
    verbose: "Increase output verbosity, print out progress of your job"
  }
}