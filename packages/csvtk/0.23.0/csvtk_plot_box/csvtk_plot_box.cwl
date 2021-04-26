class: CommandLineTool
id: csvtk_plot_box.cwl
inputs:
- id: in_box_width
  doc: box width
  type: double?
  inputBinding:
    prefix: --box-width
- id: in_horiz
  doc: horize box plot
  type: boolean?
  inputBinding:
    prefix: --horiz
- id: in_axis_width
  doc: axis width (default 1.5)
  type: double?
  inputBinding:
    prefix: --axis-width
- id: in_chunk_size
  doc: chunk size of CSV reader (default 50)
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_comment_char
  doc: lines starting with commment-character will be ignored. if your header row
    starts with '#', please assign "-C" another rare symbol, e.g. '$' (default "#")
  type: string?
  inputBinding:
    prefix: --comment-char
- id: in_data_field
  doc: column index or column name of data (default "1")
  type: long?
  inputBinding:
    prefix: --data-field
- id: in_delimiter
  doc: delimiting character of the input CSV file (default ",")
  type: File?
  inputBinding:
    prefix: --delimiter
- id: in_format
  doc: 'image format for stdout when flag -o/--out-file not given. available values:
    eps, jpg|jpeg, pdf, png, svg, and tif|tiff. (default "png")'
  type: File?
  inputBinding:
    prefix: --format
- id: in_group_field
  doc: column index or column name of group
  type: string?
  inputBinding:
    prefix: --group-field
- id: in_height
  doc: Figure height (default 4.5)
  type: double?
  inputBinding:
    prefix: --height
- id: in_ignore_empty_row
  doc: ignore empty rows
  type: boolean?
  inputBinding:
    prefix: --ignore-empty-row
- id: in_ignore_illegal_row
  doc: ignore illegal rows
  type: boolean?
  inputBinding:
    prefix: --ignore-illegal-row
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File?
  inputBinding:
    prefix: --infile-list
- id: in_label_size
  doc: label font size (default 14)
  type: long?
  inputBinding:
    prefix: --label-size
- id: in_lazy_quotes
  doc: if given, a quote may appear in an unquoted field and a non-doubled quote may
    appear in a quoted field
  type: boolean?
  inputBinding:
    prefix: --lazy-quotes
- id: in_no_header_row
  doc: specifies that the input CSV file does not have header row
  type: boolean?
  inputBinding:
    prefix: --no-header-row
- id: in_num_cpus
  doc: number of CPUs to use (default value depends on your computer) (default 2)
  type: long?
  inputBinding:
    prefix: --num-cpus
- id: in_out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: File?
  inputBinding:
    prefix: --out-delimiter
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_out_tabs
  doc: specifies that the output is delimited with tabs. Overrides "-D"
  type: boolean?
  inputBinding:
    prefix: --out-tabs
- id: in_tabs
  doc: specifies that the input CSV file is delimited with tabs. Overrides "-d"
  type: boolean?
  inputBinding:
    prefix: --tabs
- id: in_tick_width
  doc: axis tick width (default 1.5)
  type: double?
  inputBinding:
    prefix: --tick-width
- id: in_title
  doc: Figure title
  type: string?
  inputBinding:
    prefix: --title
- id: in_title_size
  doc: title font size (default 16)
  type: long?
  inputBinding:
    prefix: --title-size
- id: in_width
  doc: Figure width (default 6)
  type: double?
  inputBinding:
    prefix: --width
- id: in_x_max
  doc: maximum value of X axis
  type: long?
  inputBinding:
    prefix: --x-max
- id: in_x_min
  doc: minimum value of X axis
  type: long?
  inputBinding:
    prefix: --x-min
- id: in_xlab
  doc: x label text
  type: string?
  inputBinding:
    prefix: --xlab
- id: in_y_max
  doc: maximum value of Y axis
  type: long?
  inputBinding:
    prefix: --y-max
- id: in_y_min
  doc: minimum value of Y axis
  type: long?
  inputBinding:
    prefix: --y-min
- id: in_ylab
  doc: y label text
  type: string?
  inputBinding:
    prefix: --ylab
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: 'image format for stdout when flag -o/--out-file not given. available values:
    eps, jpg|jpeg, pdf, png, svg, and tif|tiff. (default "png")'
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
- id: out_out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_delimiter)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/csvtk:0.23.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- csvtk
- plot
- box
