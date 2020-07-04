version 1.0

task RgtVizBoxplot {
  input {
    Boolean? directory_name_output
    Boolean? title_shown_top
    Boolean? group_data_readsneeds
    Boolean? color_data_readsneeds
    Boolean? sort_data_default
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
    String file_name_input
  }
  command <<<
    rgt-viz boxplot \
      ~{file_name_input} \
      ~{true="-o" false="" directory_name_output} \
      ~{true="-t" false="" title_shown_top} \
      ~{true="-g" false="" group_data_readsneeds} \
      ~{true="-c" false="" color_data_readsneeds} \
      ~{true="-s" false="" sort_data_default} \
      ~{true="-scol" false="" scol} \
      ~{true="-nlog" false="" n_log} \
      ~{true="-color" false="" color} \
      ~{true="-pw" false="" pw} \
      ~{true="-ph" false="" ph} \
      ~{true="-nqn" false="" nq_n} \
      ~{true="-df" false="" df} \
      ~{true="-ylim" false="" ylim} \
      ~{true="-p" false="" define_significance_level} \
      ~{true="-show" false="" show} \
      ~{true="-table" false="" table}
  >>>
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    title_shown_top: "The title shown on the top of the plot and also the folder name. (default: boxplot)"
    group_data_readsneeds: "Group the data by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: reads)"
    color_data_readsneeds: "Color the data by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: regions)"
    sort_data_default: "Sort the data by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: None)"
    scol: "Share y axis among columns. (default: False)"
    n_log: "Set y axis of the plot not in log scale. (default: True)"
    color: "Define the specific colors with the given column \"color\" in experimental matrix. The color should be in the format of matplotlib.colors. For example, \"r\" for red, \"b\" for blue, or \"(100, 35, 138)\" for RGB. (default: False)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
    nq_n: "No quantile normalization in calculation. (default: False)"
    df: "Show the difference of the two signals which share the same labels.The result is the subtraction of the first to the second. (default: False)"
    ylim: "Define the limit of y axis. (default: None)"
    define_significance_level: "Define the significance level for multiple test. (default: 0.05)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default: False)"
    file_name_input: "The file name of the input Experimental Matrix file. Recommended to add more columns for more information for ploting. For example, cell type or factors. (default: None)"
  }
}