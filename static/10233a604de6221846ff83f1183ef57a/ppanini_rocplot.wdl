version 1.0

task PpaniniRocplot {
  input {
    Boolean? master_plot
    Boolean? plot_meta_genomics
    Boolean? plot_genomics
    File? path
    String? outfile
    String? beta
    Int? size
    String? name_output_file
    String? niche
    String? i
    String? e_one
  }
  command <<<
    ppanini_rocplot \
      ~{true="--master-plot" false="" master_plot} \
      ~{true="--plot-metagenomics" false="" plot_meta_genomics} \
      ~{true="--plot-genomics" false="" plot_genomics} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(niche) then ("--niche " +  '"' + niche + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(e_one) then ("-e1 " +  '"' + e_one + '"') else ""}
  >>>
  parameter_meta {
    master_plot: "plotting master figure of the paper"
    plot_meta_genomics: "plotting based of metagenomics priority score"
    plot_genomics: "plotting based of genomics priority score"
    path: "path for inputs and/or outputs"
    outfile: "output file"
    beta: "beta is a weight of contribution, B * prevelence and (1-B) * abundance"
    size: "size of the plot in inches"
    name_output_file: "a name or output file"
    niche: "niche name"
    i: ""
    e_one: ""
  }
}