version 1.0

task TEpy {
  input {
    File? text_file_describing
    File? text_file_containing
    File? tab_delimited_file
    Int? allow_different_dispersions
    Int? set_sum_todo
    Float? set_initial_dispersion
    String? method_multiple_test
    File? rank_result_table
    Int? make_plots_show
    Float? set_fdr_cutoff
    String arguments
  }
  command <<<
    TE_py \
      ~{arguments} \
      ~{if defined(text_file_describing) then ("-e " +  '"' + text_file_describing + '"') else ""} \
      ~{if defined(text_file_containing) then ("-c " +  '"' + text_file_containing + '"') else ""} \
      ~{if defined(tab_delimited_file) then ("-o " +  '"' + tab_delimited_file + '"') else ""} \
      ~{if defined(allow_different_dispersions) then ("-d " +  '"' + allow_different_dispersions + '"') else ""} \
      ~{if defined(set_sum_todo) then ("-s " +  '"' + set_sum_todo + '"') else ""} \
      ~{if defined(set_initial_dispersion) then ("-i " +  '"' + set_initial_dispersion + '"') else ""} \
      ~{if defined(method_multiple_test) then ("-m " +  '"' + method_multiple_test + '"') else ""} \
      ~{if defined(rank_result_table) then ("-r " +  '"' + rank_result_table + '"') else ""} \
      ~{if defined(make_plots_show) then ("-p " +  '"' + make_plots_show + '"') else ""} \
      ~{if defined(set_fdr_cutoff) then ("-q " +  '"' + set_fdr_cutoff + '"') else ""}
  >>>
  parameter_meta {
    text_file_describing: "Text file describing experiment Outline. Must follow\\nrequired format, please see the manual."
    text_file_containing: "Text file containing the count data. Header line must be\\nconsistent with information in experiment Outline."
    tab_delimited_file: "Tab delimited text file containing the results."
    allow_different_dispersions: "Allow different dispersions for Ribo-seq and RNA-seq\\ncount data. Off: 0; On: 1. [default: 0]"
    set_sum_todo: "Set the sum of normalized read count as the threshold to\\ndo the test. This option applies for both Ribo-seq and\\nRNA-seq data. [default: 10]"
    set_initial_dispersion: "Set the initial dispersion to start the estimation.\\n[default: 0.01]"
    method_multiple_test: "Method for multiple test correction. Options: BH\\n(Benjamini-Hochberg); Bonferroni. [default: BH]"
    rank_result_table: "Rank the result table in ascending order by a specific\\ncolumn. Adjusted p value: 1; TE change: 2; Gene id: 3;\\nKeep the order as in count file: 0. [default: 0]"
    make_plots_show: "Make plots to show the data and results. Plots are in pdf\\nformat. On: 1; Off: 0. [default: 0]"
    set_fdr_cutoff: "Set the FDR cutoff for significant case to plot.\\n[default: 0.1]\\n"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}