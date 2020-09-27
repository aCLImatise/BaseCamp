class: CommandLineTool
id: gtftk_merge_ologram_stats.cwl
inputs:
- id: in_pdf_width
  doc: 'Output pdf file width (inches). (default: None)'
  type: File
  inputBinding:
    prefix: --pdf-width
- id: in_pdf_height
  doc: 'Output pdf file height (inches). (default: None)'
  type: File
  inputBinding:
    prefix: --pdf-height
- id: in_output
  doc: 'Pdf file name. (default: None)'
  type: boolean
  inputBinding:
    prefix: --output
- id: in_labels
  doc: 'A comma separated list of labels. (default: None)'
  type: boolean
  inputBinding:
    prefix: --labels
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
- id: in_o_log_ram_dot
  doc: 'Notes:'
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: 'Arguments:'
  type: long
  inputBinding:
    position: 0
- id: in_input_files
  doc: Complete paths to the OLOGRAM output files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pdf_width
  doc: 'Output pdf file width (inches). (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_pdf_width)
- id: out_pdf_height
  doc: 'Output pdf file height (inches). (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_pdf_height)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_no_date)
cwlVersion: v1.1
baseCommand:
- gtftk
- merge_ologram_stats
