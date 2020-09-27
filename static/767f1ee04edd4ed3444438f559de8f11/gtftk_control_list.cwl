class: CommandLineTool
id: gtftk_control_list.cwl
inputs:
- id: in_in_file
  doc: 'A two columns tab-file. See notes. (default: None)'
  type: boolean
  inputBinding:
    prefix: --in-file
- id: in_reference_gene_file
  doc: 'The file containing the reference gene list (1 column, transcript ids). No
    header. (default: None)'
  type: boolean
  inputBinding:
    prefix: --reference-gene-file
- id: in_out_dir
  doc: 'Name of the output directory. (default: control_list)'
  type: Directory
  inputBinding:
    prefix: --out-dir
- id: in_log_two
  doc: 'If selected, data will be log transformed. (default: False)'
  type: boolean
  inputBinding:
    prefix: --log2
- id: in_pseudo_count
  doc: 'The value for a pseudo-count to be added. (default: 0)'
  type: boolean
  inputBinding:
    prefix: --pseudo-count
- id: in_page_width
  doc: 'Output pdf file width (e.g. 7 inches). (default: None)'
  type: File
  inputBinding:
    prefix: --page-width
- id: in_page_height
  doc: 'Output file height (e.g. 5 inches). (default: None)'
  type: File
  inputBinding:
    prefix: --page-height
- id: in_page_format
  doc: 'Output file format. (default: pdf)'
  type: File
  inputBinding:
    prefix: --page-format
- id: in_dpi
  doc: 'Dpi to use. (default: 300)'
  type: boolean
  inputBinding:
    prefix: --dpi
- id: in_skip_first
  doc: 'Indicates that infile hase a header. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip-first
- id: in_rug
  doc: 'Add rugs to the diagram. (default: False)'
  type: boolean
  inputBinding:
    prefix: --rug
- id: in_jitter
  doc: 'Add jittered points. (default: False)'
  type: boolean
  inputBinding:
    prefix: --jitter
- id: in_user_img_file
  doc: 'Provide an alternative path for the image. (default: None)'
  type: boolean
  inputBinding:
    prefix: --user-img-file
- id: in_set_colors
  doc: 'Colors for the two sets (comma-separated). (default: #b2df8a,#6a3d9a)'
  type: boolean
  inputBinding:
    prefix: --set-colors
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean
  inputBinding:
    prefix: --write-message-to-file
- id: in_optional_arguments
  doc: 'optional arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: 'Name of the output directory. (default: control_list)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_page_width
  doc: 'Output pdf file width (e.g. 7 inches). (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_page_width)
- id: out_page_height
  doc: 'Output file height (e.g. 5 inches). (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_page_height)
- id: out_page_format
  doc: 'Output file format. (default: pdf)'
  type: File
  outputBinding:
    glob: $(inputs.in_page_format)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_no_date)
cwlVersion: v1.1
baseCommand:
- gtftk
- control_list
