version 1.0

task PpaniniScatterplot {
  input {
    String? p_panini_output
    File? diamond_output
    Boolean? master_plot
    File? path
    File? outfile
    Int? size
  }
  command <<<
    ppanini_scatterplot \
      ~{if defined(p_panini_output) then ("--ppanini-output " +  '"' + p_panini_output + '"') else ""} \
      ~{if defined(diamond_output) then ("--diamond-output " +  '"' + diamond_output + '"') else ""} \
      ~{if (master_plot) then "--master-plot" else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    p_panini_output: "PPANINI output table"
    diamond_output: "<feature id>\\na mapping file of gene-metagenom)"
    master_plot: "plotting master figure of the paper"
    path: "path for inputs and/or outputs"
    outfile: "output file"
    size: "size of the plot in inches"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}