version 1.0

task PlotCountStats {
  input {
    Int? second_chr
    File? full_path_file
    File? output_prefix
    File? exclude_suffix
    Int? const_chr
    String? var_one_marker
    Array[Int] var_one_marker_vals
    String? var_two_marker
    Boolean? var_two_marker_vals
    Int? marker_size
    Int? marker_color
    Int? marker_shape
    Float? marker_alpha
    Int? legend_marker_scale
    Int? x_title
    Int? y_title
    String? var_meta
    String chrom_stats
  }
  command <<<
    plot_count_stats \
      ~{chrom_stats} \
      ~{if defined(second_chr) then ("--second_chr " +  '"' + second_chr + '"') else ""} \
      ~{if defined(full_path_file) then ("--input " +  '"' + full_path_file + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(exclude_suffix) then ("--exclude_suffix " +  '"' + exclude_suffix + '"') else ""} \
      ~{if defined(const_chr) then ("--const_chr " +  '"' + const_chr + '"') else ""} \
      ~{if defined(var_one_marker) then ("--var1_marker " +  '"' + var_one_marker + '"') else ""} \
      ~{if defined(var_one_marker_vals) then ("--var1_marker_vals " +  '"' + var_one_marker_vals + '"') else ""} \
      ~{if defined(var_two_marker) then ("--var2_marker " +  '"' + var_two_marker + '"') else ""} \
      ~{if (var_two_marker_vals) then "--var2_marker_vals" else ""} \
      ~{if defined(marker_size) then ("--marker_size " +  '"' + marker_size + '"') else ""} \
      ~{if defined(marker_color) then ("--marker_color " +  '"' + marker_color + '"') else ""} \
      ~{if defined(marker_shape) then ("--marker_shape " +  '"' + marker_shape + '"') else ""} \
      ~{if defined(marker_alpha) then ("--marker_alpha " +  '"' + marker_alpha + '"') else ""} \
      ~{if defined(legend_marker_scale) then ("--legend_marker_scale " +  '"' + legend_marker_scale + '"') else ""} \
      ~{if defined(x_title) then ("--x_title " +  '"' + x_title + '"') else ""} \
      ~{if defined(y_title) then ("--y_title " +  '"' + y_title + '"') else ""} \
      ~{if defined(var_meta) then ("--meta " +  '"' + var_meta + '"') else ""}
  >>>
  parameter_meta {
    second_chr: "--const_chr CONST_CHR\\n[--var1_marker {color,shape,size}]\\n[--var1_marker_vals VAR1_MARKER_VALS [VAR1_MARKER_VALS ...]]\\n[--var2_marker {color,shape,size,none}]\\n[--var2_marker_vals [VAR2_MARKER_VALS [VAR2_MARKER_VALS ...]]]\\n[--marker_size MARKER_SIZE]\\n[--marker_color MARKER_COLOR]\\n[--marker_shape MARKER_SHAPE]\\n[--marker_alpha MARKER_ALPHA]\\n[--legend_marker_scale LEGEND_MARKER_SCALE]\\n[--x_title X_TITLE] [--y_title Y_TITLE]"
    full_path_file: "Full path to file containing table output by"
    output_prefix: "'Prefix' of output files. This includes full path to\\ndesired file and desired file name before suffix\\n(suffix will be .pdf)."
    exclude_suffix: "Text to remove from end of sample names in input file.\\nDefault is to remove nothing. Note that the sample\\nnames in the input file have to match the names in the\\nmeta file AFTER they undergo this step."
    const_chr: "Chromosome to use denominator on both the X- and\\nY-axis. For example, if one was comparing chrX and\\nchrY, and using chr19 to normalize, recommended values\\nwould be: --first_chr chrX --second_chr chrY\\n--const_chr chr19."
    var_one_marker: "Way of designating variable 1 values in plot. Choices\\nare 'color', 'shape', or 'size'. Must be used in\\nconjunction with --var1_marker_vals. Default is\\n'color'."
    var_one_marker_vals: "Marker values to use for variable 1 values. If\\n--var1_marker is 'color', then --var1_marker_vals\\nshould be a space-separated list of Matplotlib colors\\n(e.g., 'red blue green'). If --var1_marker is 'shape'\\nthen --var1_marker_vals should be a space-separated\\nlist of Matplotlib scatter markers (e.g., 'x o D' for\\nx, cicle, and Diamond). Finally, if --var1_marker is\\n'size', then --var1_marker_vals should be a space-\\nseparated list of Matplotlib marker sizes in units of\\npoints^2 (e.g., '5 10 15'). Default is 'red blue'."
    var_two_marker: "Way of designating variable 2 values in plot. Choices\\nare 'color', 'shape', or 'size'. Must be used in\\nconjunction with --var2_marker_vals. Default is\\n'none', which will only process --var1_marker."
    var_two_marker_vals: "[VAR2_MARKER_VALS [VAR2_MARKER_VALS ...]]\\nMarker values to use for variable 2 values. If\\n--var2_marker is 'color', then --var2_marker_vals\\nshould be a space-separated list of Matplotlib colors\\n(e.g., 'red blue green'). If --var2_marker is 'shape'\\nthen --var2_marker_vals should be a space-separated\\nlist of Matplotlib scatter markers (e.g., 'x o D' for\\nx, cicle, and Diamond). Finally, if --var2_marker is\\n'size', then --var2_marker_vals should be a space-\\nseparated list of Matplotlib marker sizes in units of\\npoints^2 (e.g., '5 10 15'). Default is 'red blue'."
    marker_size: "If 'size' is not selected for --var1_marker or\\n--var2_marker, use this size for markers. Default is\\n100."
    marker_color: "If 'color' is not selected for --var1_marker or\\n--var2_marker, use this color for markers. Default is\\n'black'."
    marker_shape: "If 'shape' is not selected for --var1_marker or\\n--var2_marker, use this shape for markers (see\\nmatplotlib for possible shapes). Default is 'o' for\\ncircles."
    marker_alpha: "Marker transparency ranging from 0.0 to 1.0 (1.0 being\\nnontransparent). Default is 0.5."
    legend_marker_scale: "Use this value to scale maker size in legend, if\\ndesired. Default is 1.0, or no scaling."
    x_title: "X axis title. Default is '<name of first chrom> /\\n<name of const chrom> ratio'. E.g., 'chrX / chr19\\nratio'"
    y_title: "Y axis title. Default is '<name of second chrom> /\\n<name of const chrom> ratio'. E.g., 'chrY / chr19\\nratio'\\n"
    var_meta: ""
    chrom_stats: "--meta META           Full path to file containing metadata table. This file"
  }
  output {
    File out_stdout = stdout()
    File out_full_path_file = "${in_full_path_file}"
    File out_output_prefix = "${in_output_prefix}"
  }
}