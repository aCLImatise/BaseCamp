version 1.0

task PpaniniRocplot {
  input {
    String? p_panini_output
    Int? essential_genes_one
    Int? essential_genes_two
    Boolean? master_plot
    Boolean? plot_meta_genomics
    Boolean? plot_genomics
    File? path
    File? outfile
    Int? beta
    Int? size
    File? name_output_file
    String? niche
  }
  command <<<
    ppanini_rocplot \
      ~{if defined(p_panini_output) then ("--ppanini-output " +  '"' + p_panini_output + '"') else ""} \
      ~{if defined(essential_genes_one) then ("--essential-genes1 " +  '"' + essential_genes_one + '"') else ""} \
      ~{if defined(essential_genes_two) then ("--essential-genes2 " +  '"' + essential_genes_two + '"') else ""} \
      ~{if (master_plot) then "--master-plot" else ""} \
      ~{if (plot_meta_genomics) then "--plot-metagenomics" else ""} \
      ~{if (plot_genomics) then "--plot-genomics" else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(niche) then ("--niche " +  '"' + niche + '"') else ""}
  >>>
  parameter_meta {
    p_panini_output: "PPANINI output table"
    essential_genes_one: "<feature id>\\na list of essential genes)"
    essential_genes_two: "<feature id>\\na list of essential genes)"
    master_plot: "plotting master figure of the paper"
    plot_meta_genomics: "plotting based of metagenomics priority score"
    plot_genomics: "plotting based of genomics priority score"
    path: "path for inputs and/or outputs"
    outfile: "output file"
    beta: "beta is a weight of contribution, B * prevelence and (1-B) * abundance"
    size: "size of the plot in inches"
    name_output_file: "a name or output file"
    niche: "niche name"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_name_output_file = "${in_name_output_file}"
  }
}