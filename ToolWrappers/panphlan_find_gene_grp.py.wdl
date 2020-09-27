version 1.0

task PanphlanFindGeneGrppy {
  input {
    File? i_matrix
    File? path_ouput_file
    Float? cut_top
    File? out_plot
    File? pan_genome
    String? optics_xi
    Boolean? analysis
    Int? empirical
    Boolean? verbose
  }
  command <<<
    panphlan_find_gene_grp_py \
      ~{if defined(i_matrix) then ("--i_matrix " +  '"' + i_matrix + '"') else ""} \
      ~{if defined(path_ouput_file) then ("--output " +  '"' + path_ouput_file + '"') else ""} \
      ~{if defined(cut_top) then ("--cut_top " +  '"' + cut_top + '"') else ""} \
      ~{if defined(out_plot) then ("--out_plot " +  '"' + out_plot + '"') else ""} \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(optics_xi) then ("--optics_xi " +  '"' + optics_xi + '"') else ""} \
      ~{if (analysis) then "--analysis" else ""} \
      ~{if defined(empirical) then ("--empirical " +  '"' + empirical + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    i_matrix: "Path to presence/absence matrix"
    path_ouput_file: "Path to ouput file with genes groups"
    cut_top: "Amount of rows to remove based on top and bottom row\\nsums. Default 0.01"
    out_plot: "Path to heatmap plot output."
    pan_genome: "Path to pangenome file."
    optics_xi: "Xi parameter for OPTICS clustering"
    analysis: "Should gene groups be analyzed?"
    empirical: "How many ramdom sample in empirical pvalue generation\\n? Default 500"
    verbose: "Show progress information"
  }
  output {
    File out_stdout = stdout()
    File out_out_plot = "${in_out_plot}"
  }
}