class: CommandLineTool
id: csvtk_plot_box.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: box_width
  doc: box width
  type: double
  inputBinding:
    prefix: --box-width
- id: horiz
  doc: horize box plot
  type: boolean
  inputBinding:
    prefix: --horiz
- id: axis_width
  doc: axis width (default 1.5)
  type: double
  inputBinding:
    prefix: --axis-width
- id: chunk_size
  doc: chunk size of CSV reader (default 50)
  type: long
  inputBinding:
    prefix: --chunk-size
- id: comment_char
  doc: lines starting with commment-character will be ignored. if your header row
    starts with '#', please assign "-C" another rare symbol, e.g. '$' (default "#")
  type: string
  inputBinding:
    prefix: --comment-char
- id: data_field
  doc: column index or column name of data (default "1")
  type: string
  inputBinding:
    prefix: --data-field
- id: delimiter
  doc: delimiting character of the input CSV file (default ",")
  type: string
  inputBinding:
    prefix: --delimiter
- id: format
  doc: 'image format for stdout when flag -o/--out-file not given. available values:
    eps, jpg|jpeg, pdf, png, svg, and tif|tiff. (default "png")'
  type: string
  inputBinding:
    prefix: --format
- id: group_field
  doc: column index or column name of group
  type: string
  inputBinding:
    prefix: --group-field
- id: height
  doc: Figure height (default 4.5)
  type: double
  inputBinding:
    prefix: --height
- id: ignore_empty_row
  doc: ignore empty rows
  type: boolean
  inputBinding:
    prefix: --ignore-empty-row
- id: ignore_illegal_row
  doc: ignore illegal rows
  type: boolean
  inputBinding:
    prefix: --ignore-illegal-row
- id: in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: string
  inputBinding:
    prefix: --infile-list
- id: label_size
  doc: label font size (default 14)
  type: long
  inputBinding:
    prefix: --label-size
- id: lazy_quotes
  doc: if given, a quote may appear in an unquoted field and a non-doubled quote may
    appear in a quoted field
  type: boolean
  inputBinding:
    prefix: --lazy-quotes
- id: no_header_row
  doc: specifies that the input CSV file does not have header row
  type: boolean
  inputBinding:
    prefix: --no-header-row
- id: num_cpus
  doc: number of CPUs to use (default value depends on your computer) (default 8)
  type: long
  inputBinding:
    prefix: --num-cpus
- id: out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: string
  inputBinding:
    prefix: --out-delimiter
- id: out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: string
  inputBinding:
    prefix: --out-file
- id: out_tabs
  doc: specifies that the output is delimited with tabs. Overrides "-D"
  type: boolean
  inputBinding:
    prefix: --out-tabs
- id: tabs
  doc: specifies that the input CSV file is delimited with tabs. Overrides "-d" and
    "-D"
  type: boolean
  inputBinding:
    prefix: --tabs
- id: tick_width
  doc: axis tick width (default 1.5)
  type: double
  inputBinding:
    prefix: --tick-width
- id: title
  doc: Figure title
  type: string
  inputBinding:
    prefix: --title
- id: title_size
  doc: title font size (default 16)
  type: long
  inputBinding:
    prefix: --title-size
- id: width
  doc: Figure width (default 6)
  type: double
  inputBinding:
    prefix: --width
- id: x_max
  doc: maximum value of X axis
  type: string
  inputBinding:
    prefix: --x-max
- id: x_min
  doc: minimum value of X axis
  type: string
  inputBinding:
    prefix: --x-min
- id: xlab
  doc: x label text
  type: string
  inputBinding:
    prefix: --xlab
- id: y_max
  doc: maximum value of Y axis
  type: string
  inputBinding:
    prefix: --y-max
- id: y_min
  doc: minimum value of Y axis
  type: string
  inputBinding:
    prefix: --y-min
- id: ylab
  doc: y label text
  type: string
  inputBinding:
    prefix: --ylab
outputs: []
cwlVersion: v1.1
baseCommand:
- csvtk
- plot
- box
