class: CommandLineTool
id: gtftk_profile.cwl
inputs:
- id: in_input_file
  doc: 'A zip file containing a matrix as produced by mk_matrix. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --inputfile
- id: in_out_dir
  doc: 'Output directory name. (default: draw_profile)'
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_transcript_file
  doc: 'A two columns file with the transcripts of interest and their classes. (default:
    None)'
  type: boolean?
  inputBinding:
    prefix: --transcript-file
- id: in_stat
  doc: 'The statistics to be computed. (default: mean)'
  type: boolean?
  inputBinding:
    prefix: --stat
- id: in_confidence_interval
  doc: 'Add a confidence interval to estimate standard error of the mean. (default:
    False)'
  type: boolean?
  inputBinding:
    prefix: --confidence-interval
- id: in_profile_colors
  doc: 'Colors. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --profile-colors
- id: in_color_order
  doc: 'Factor ordering. comma-separated bwig labels or tx classes. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --color-order
- id: in_group_by
  doc: 'The variable used for grouping. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --group-by
- id: in_facet_var
  doc: 'The variable to be used for splitting into facets. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --facet-var
- id: in_page_width
  doc: 'Output pdf file width (e.g. 7 inches). (default: None)'
  type: File?
  inputBinding:
    prefix: --page-width
- id: in_page_height
  doc: 'Output file height (e.g. 5 inches). (default: None)'
  type: File?
  inputBinding:
    prefix: --page-height
- id: in_page_format
  doc: 'Output file format. (default: pdf)'
  type: File?
  inputBinding:
    prefix: --page-format
- id: in_line_width
  doc: 'Line width. (default: 1.25)'
  type: boolean?
  inputBinding:
    prefix: --line-width
- id: in_border_color
  doc: 'Border color for the plot. (default: #777777)'
  type: boolean?
  inputBinding:
    prefix: --border-color
- id: in_x_lab
  doc: 'X axis label. (default: Selected genomic regions)'
  type: boolean?
  inputBinding:
    prefix: --x-lab
- id: in_axis_text
  doc: 'Size of axis text. (default: 8)'
  type: boolean?
  inputBinding:
    prefix: --axis-text
- id: in_strip_text
  doc: 'Size of strip text. (default: 8)'
  type: boolean?
  inputBinding:
    prefix: --strip-text
- id: in_subset_b_wig
  doc: 'Use only a subset of the bigwigs for plotting (default: None)'
  type: boolean?
  inputBinding:
    prefix: --subset-bwig
- id: in_facet_col
  doc: 'Number of facet columns. (default: 4)'
  type: boolean?
  inputBinding:
    prefix: --facet-col
- id: in_show_group_number
  doc: 'Show the number of element per group. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --show-group-number
- id: in_user_img_file
  doc: 'Provide an alternative path for the image. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --user-img-file
- id: in_upper_limit
  doc: 'Upper limit based on quantile computed from unique values. (default: 0.95)'
  type: boolean?
  inputBinding:
    prefix: --upper-limit
- id: in_normalization_method
  doc: 'The normalization method performed on a per bigwig basis. (default: none)'
  type: boolean?
  inputBinding:
    prefix: --normalization-method
- id: in_to_log
  doc: 'Control whether the data should be log2-transform before plotting. (default:
    False)'
  type: boolean?
  inputBinding:
    prefix: --to-log
- id: in_title
  doc: 'A title for the diagram. (default: )'
  type: boolean?
  inputBinding:
    prefix: --title
- id: in_dpi
  doc: 'Dpi to use. (default: 300)'
  type: boolean?
  inputBinding:
    prefix: --dpi
- id: in_theme_plot_nine
  doc: 'The theme for plotnine diagram. (default: bw)'
  type: boolean?
  inputBinding:
    prefix: --theme-plotnine
- id: in_palette
  doc: 'A color palette (see: https://tinyurl.com/ydacyfxx). (default: nipy_spectral)'
  type: boolean?
  inputBinding:
    prefix: --palette
- id: in_list_b_wig
  doc: 'List the bigwig files in the matrix file.. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --list-bwig
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --write-message-to-file
- id: in_arguments
  doc: 'Arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: 'Output directory name. (default: draw_profile)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_page_width
  doc: 'Output pdf file width (e.g. 7 inches). (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_page_width)
- id: out_page_height
  doc: 'Output file height (e.g. 5 inches). (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_page_height)
- id: out_page_format
  doc: 'Output file format. (default: pdf)'
  type: File?
  outputBinding:
    glob: $(inputs.in_page_format)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_no_date)
hints: []
cwlVersion: v1.1
baseCommand:
- gtftk
- profile
