version 1.0

task PlotCountStats {
  input {
    String? full_path_file_containing_output
    String? full_path_file_containing_table
    String? output_prefix
    String? exclude_suffix
    String? first_chr
    String? second_chr
    String? const_chr
    String? var_one_marker
    Array[String] var_one_marker_vals
    String? var_two_marker
    Boolean? var_two_marker_vals
    String? marker_size
    String? marker_color
    String? marker_shape
    String? marker_alpha
    String? legend_marker_scale
    String? x_title
    String? y_title
  }
  command <<<
    plot_count_stats \
      ~{if defined(full_path_file_containing_output) then ("--input " +  '"' + full_path_file_containing_output + '"') else ""} \
      ~{if defined(full_path_file_containing_table) then ("--meta " +  '"' + full_path_file_containing_table + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(exclude_suffix) then ("--exclude_suffix " +  '"' + exclude_suffix + '"') else ""} \
      ~{if defined(first_chr) then ("--first_chr " +  '"' + first_chr + '"') else ""} \
      ~{if defined(second_chr) then ("--second_chr " +  '"' + second_chr + '"') else ""} \
      ~{if defined(const_chr) then ("--const_chr " +  '"' + const_chr + '"') else ""} \
      ~{if defined(var_one_marker) then ("--var1_marker " +  '"' + var_one_marker + '"') else ""} \
      ~{if defined(var_one_marker_vals) then ("--var1_marker_vals " +  '"' + var_one_marker_vals + '"') else ""} \
      ~{if defined(var_two_marker) then ("--var2_marker " +  '"' + var_two_marker + '"') else ""} \
      ~{true="--var2_marker_vals" false="" var_two_marker_vals} \
      ~{if defined(marker_size) then ("--marker_size " +  '"' + marker_size + '"') else ""} \
      ~{if defined(marker_color) then ("--marker_color " +  '"' + marker_color + '"') else ""} \
      ~{if defined(marker_shape) then ("--marker_shape " +  '"' + marker_shape + '"') else ""} \
      ~{if defined(marker_alpha) then ("--marker_alpha " +  '"' + marker_alpha + '"') else ""} \
      ~{if defined(legend_marker_scale) then ("--legend_marker_scale " +  '"' + legend_marker_scale + '"') else ""} \
      ~{if defined(x_title) then ("--x_title " +  '"' + x_title + '"') else ""} \
      ~{if defined(y_title) then ("--y_title " +  '"' + y_title + '"') else ""}
  >>>
  parameter_meta {
    full_path_file_containing_output: "Full path to file containing table output by CHROM_STATS"
    full_path_file_containing_table: "Full path to file containing metadata table. This file should have the following columns separated by tabs: Sample NameOfVariable1 NameOfVariable2. NameOfVariable1 and NameofVariable2 should be the names of whatever you're interested in plotting (e.g., Sex). NameOfVariable2 is optional. This script handles a max of two variables."
    output_prefix: "'Prefix' of output files. This includes full path to desired file and desired file name before suffix (suffix will be .pdf)."
    exclude_suffix: "Text to remove from end of sample names in input file. Default is to remove nothing. Note that the sample names in the input file have to match the names in the meta file AFTER they undergo this step."
    first_chr: "Chromosome to use a numerator on X-axis. For example, if one was comparing chrX and chrY, and using chr19 to normalize, recommended values would be: --first_chr chrX --second_chr chrY --const_chr chr19."
    second_chr: "Chromosome to use a numerator on Y-axis. For example, if one was comparing chrX and chrY, and using chr19 to normalize, recommended values would be: --first_chr chrX --second_chr chrY --const_chr chr19."
    const_chr: "Chromosome to use denominator on both the X- and Y-axis. For example, if one was comparing chrX and chrY, and using chr19 to normalize, recommended values would be: --first_chr chrX --second_chr chrY --const_chr chr19."
    var_one_marker: "Way of designating variable 1 values in plot. Choices are 'color', 'shape', or 'size'. Must be used in conjunction with --var1_marker_vals. Default is 'color'."
    var_one_marker_vals: "Marker values to use for variable 1 values. If --var1_marker is 'color', then --var1_marker_vals should be a space-separated list of Matplotlib colors (e.g., 'red blue green'). If --var1_marker is 'shape' then --var1_marker_vals should be a space-separated list of Matplotlib scatter markers (e.g., 'x o D' for x, cicle, and Diamond). Finally, if --var1_marker is 'size', then --var1_marker_vals should be a space- separated list of Matplotlib marker sizes in units of points^2 (e.g., '5 10 15'). Default is 'red blue'."
    var_two_marker: "Way of designating variable 2 values in plot. Choices are 'color', 'shape', or 'size'. Must be used in conjunction with --var2_marker_vals. Default is 'none', which will only process --var1_marker."
    var_two_marker_vals: "[VAR2_MARKER_VALS [VAR2_MARKER_VALS ...]] Marker values to use for variable 2 values. If --var2_marker is 'color', then --var2_marker_vals should be a space-separated list of Matplotlib colors (e.g., 'red blue green'). If --var2_marker is 'shape' then --var2_marker_vals should be a space-separated list of Matplotlib scatter markers (e.g., 'x o D' for x, cicle, and Diamond). Finally, if --var2_marker is 'size', then --var2_marker_vals should be a space- separated list of Matplotlib marker sizes in units of points^2 (e.g., '5 10 15'). Default is 'red blue'."
    marker_size: "If 'size' is not selected for --var1_marker or --var2_marker, use this size for markers. Default is 100."
    marker_color: "If 'color' is not selected for --var1_marker or --var2_marker, use this color for markers. Default is 'black'."
    marker_shape: "If 'shape' is not selected for --var1_marker or --var2_marker, use this shape for markers (see matplotlib for possible shapes). Default is 'o' for circles."
    marker_alpha: "Marker transparency ranging from 0.0 to 1.0 (1.0 being nontransparent). Default is 0.5."
    legend_marker_scale: "Use this value to scale maker size in legend, if desired. Default is 1.0, or no scaling."
    x_title: "X axis title. Default is '<name of first chrom> / <name of const chrom> ratio'. E.g., 'chrX / chr19 ratio'"
    y_title: "Y axis title. Default is '<name of second chrom> / <name of const chrom> ratio'. E.g., 'chrY / chr19 ratio'"
  }
}