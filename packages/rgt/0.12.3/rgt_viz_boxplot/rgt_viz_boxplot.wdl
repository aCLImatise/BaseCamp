version 1.0

task RgtvizBoxplot {
  input {
    Directory? directory_name_output
    Boolean? title_shown_top
    Boolean? group_data_readsneeds
    Boolean? color_data_readsneeds
    Boolean? sort_data_readsneeds
    Boolean? scol
    Boolean? n_log
    Boolean? color
    Boolean? pw
    Boolean? ph
    Boolean? nq_n
    Boolean? df
    Boolean? ylim
    Boolean? define_significance_level
    Boolean? show
    Boolean? table
  }
  command <<<
    rgt_viz boxplot \
      ~{if (directory_name_output) then "-o" else ""} \
      ~{if (title_shown_top) then "-t" else ""} \
      ~{if (group_data_readsneeds) then "-g" else ""} \
      ~{if (color_data_readsneeds) then "-c" else ""} \
      ~{if (sort_data_readsneeds) then "-s" else ""} \
      ~{if (scol) then "-scol" else ""} \
      ~{if (n_log) then "-nlog" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (ph) then "-ph" else ""} \
      ~{if (nq_n) then "-nqn" else ""} \
      ~{if (df) then "-df" else ""} \
      ~{if (ylim) then "-ylim" else ""} \
      ~{if (define_significance_level) then "-p" else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (table) then "-table" else ""}
  >>>
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example, project\\nname. (default: None)"
    title_shown_top: "The title shown on the top of the plot and also the folder name.\\n(default: boxplot)"
    group_data_readsneeds: "Group the data by reads(needs 'factor' column), regions(needs\\n'factor' column), another name of column (for example, 'cell')in\\nthe header of experimental matrix, or None. (default: reads)"
    color_data_readsneeds: "Color the data by reads(needs 'factor' column), regions(needs\\n'factor' column), another name of column (for example, 'cell')in\\nthe header of experimental matrix, or None. (default: regions)"
    sort_data_readsneeds: "Sort the data by reads(needs 'factor' column), regions(needs\\n'factor' column), another name of column (for example, 'cell')in\\nthe header of experimental matrix, or None. (default: None)"
    scol: "Share y axis among columns. (default: False)"
    n_log: "Set y axis of the plot not in log scale. (default: True)"
    color: "Define the specific colors with the given column \\\"color\\\" in\\nexperimental matrix. The color should be in the format of\\nmatplotlib.colors. For example, \\\"r\\\" for red, \\\"b\\\" for blue, or\\n\\\"(100, 35, 138)\\\" for RGB. (default: False)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
    nq_n: "No quantile normalization in calculation. (default: False)"
    df: "Show the difference of the two signals which share the same\\nlabels.The result is the subtraction of the first to the second.\\n(default: False)"
    ylim: "Define the limit of y axis. (default: None)"
    define_significance_level: "Define the significance level for multiple test. (default: 0.05)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}