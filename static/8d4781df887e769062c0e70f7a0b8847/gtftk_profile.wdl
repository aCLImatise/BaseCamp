version 1.0

task GtftkProfile {
  input {
    Boolean? input_file
    Directory? out_dir
    Boolean? transcript_file
    Boolean? stat
    Boolean? confidence_interval
    Boolean? profile_colors
    Boolean? color_order
    Boolean? group_by
    Boolean? facet_var
    File? page_width
    File? page_height
    File? page_format
    Boolean? line_width
    Boolean? border_color
    Boolean? x_lab
    Boolean? axis_text
    Boolean? strip_text
    Boolean? subset_b_wig
    Boolean? facet_col
    Boolean? show_group_number
    Boolean? user_img_file
    Boolean? upper_limit
    Boolean? normalization_method
    Boolean? to_log
    Boolean? title
    Boolean? dpi
    Boolean? theme_plot_nine
    Boolean? palette
    Boolean? list_b_wig
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    Int arguments
  }
  command <<<
    gtftk profile \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (transcript_file) then "--transcript-file" else ""} \
      ~{if (stat) then "--stat" else ""} \
      ~{if (confidence_interval) then "--confidence-interval" else ""} \
      ~{if (profile_colors) then "--profile-colors" else ""} \
      ~{if (color_order) then "--color-order" else ""} \
      ~{if (group_by) then "--group-by" else ""} \
      ~{if (facet_var) then "--facet-var" else ""} \
      ~{if (page_width) then "--page-width" else ""} \
      ~{if (page_height) then "--page-height" else ""} \
      ~{if (page_format) then "--page-format" else ""} \
      ~{if (line_width) then "--line-width" else ""} \
      ~{if (border_color) then "--border-color" else ""} \
      ~{if (x_lab) then "--x-lab" else ""} \
      ~{if (axis_text) then "--axis-text" else ""} \
      ~{if (strip_text) then "--strip-text" else ""} \
      ~{if (subset_b_wig) then "--subset-bwig" else ""} \
      ~{if (facet_col) then "--facet-col" else ""} \
      ~{if (show_group_number) then "--show-group-number" else ""} \
      ~{if (user_img_file) then "--user-img-file" else ""} \
      ~{if (upper_limit) then "--upper-limit" else ""} \
      ~{if (normalization_method) then "--normalization-method" else ""} \
      ~{if (to_log) then "--to-log" else ""} \
      ~{if (title) then "--title" else ""} \
      ~{if (dpi) then "--dpi" else ""} \
      ~{if (theme_plot_nine) then "--theme-plotnine" else ""} \
      ~{if (palette) then "--palette" else ""} \
      ~{if (list_b_wig) then "--list-bwig" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  parameter_meta {
    input_file: "A zip file containing a matrix as produced by mk_matrix. (default: None)"
    out_dir: "Output directory name. (default: draw_profile)"
    transcript_file: "A two columns file with the transcripts of interest and their classes. (default: None)"
    stat: "The statistics to be computed. (default: mean)"
    confidence_interval: "Add a confidence interval to estimate standard error of the mean. (default: False)"
    profile_colors: "Colors. (default: None)"
    color_order: "Factor ordering. comma-separated bwig labels or tx classes. (default: None)"
    group_by: "The variable used for grouping. (default: None)"
    facet_var: "The variable to be used for splitting into facets. (default: None)"
    page_width: "Output pdf file width (e.g. 7 inches). (default: None)"
    page_height: "Output file height (e.g. 5 inches). (default: None)"
    page_format: "Output file format. (default: pdf)"
    line_width: "Line width. (default: 1.25)"
    border_color: "Border color for the plot. (default: #777777)"
    x_lab: "X axis label. (default: Selected genomic regions)"
    axis_text: "Size of axis text. (default: 8)"
    strip_text: "Size of strip text. (default: 8)"
    subset_b_wig: "Use only a subset of the bigwigs for plotting (default: None)"
    facet_col: "Number of facet columns. (default: 4)"
    show_group_number: "Show the number of element per group. (default: False)"
    user_img_file: "Provide an alternative path for the image. (default: None)"
    upper_limit: "Upper limit based on quantile computed from unique values. (default: 0.95)"
    normalization_method: "The normalization method performed on a per bigwig basis. (default: none)"
    to_log: "Control whether the data should be log2-transform before plotting. (default: False)"
    title: "A title for the diagram. (default: )"
    dpi: "Dpi to use. (default: 300)"
    theme_plot_nine: "The theme for plotnine diagram. (default: bw)"
    palette: "A color palette (see: https://tinyurl.com/ydacyfxx). (default: nipy_spectral)"
    list_b_wig: "List the bigwig files in the matrix file.. (default: False)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    arguments: "Arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
    File out_page_width = "${in_page_width}"
    File out_page_height = "${in_page_height}"
    File out_page_format = "${in_page_format}"
    File out_no_date = "${in_no_date}"
  }
}