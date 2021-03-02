version 1.0

task GseapyEnrichr {
  input {
    String? input_list
    String? gene_sets
    String? organism
    String? description
    Float? cut_off
    Int? background
    Int? top_term
    Directory? outdir
    Boolean? format
    Float? fs
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
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(fs) then ("--fs " +  '"' + fs + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (no_plot) then "--no-plot" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gseapy:0.10.3--py_0"
  }
  parameter_meta {
    input_list: "Enrichr uses a list of gene names as input."
    gene_sets: "Enrichr library name(s) required. Separate each name\\nby comma."
    organism: "Enrichr supported organism name. Default: human. See\\nhere: https://amp.pharm.mssm.edu/modEnrichr."
    description: "It is recommended to enter a short description for\\nyour list so that multiple lists can be differentiated\\nfrom each other if you choose to save or share your\\nlist."
    cut_off: "Adjust-Pval cutoff, used for generating plots.\\nDefault: 0.05."
    background: "BioMart Dataset name or Background total genes number.\\nDefault: None"
    top_term: "Numbers of top terms shown in the plot. Default: 10"
    outdir: "The GSEApy output directory. Default: the current\\nworking directory"
    format: "File extensions supported by Matplotlib active\\nbackend, choose from {'pdf', 'png', 'jpeg','ps',\\n'eps','svg'}. Default: 'pdf'."
    fs: "height, --figsize width height\\nThe figsize keyword argument need two parameters to\\ndefine. Default: (6.5, 6)"
    graph: "Numbers of top graphs produced. Default: 20"
    no_plot: "Speed up computing by suppressing the plot output.This\\nis useful only if data are interested. Default: False."
    verbose: "Increase output verbosity, print out progress of your\\njob\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}