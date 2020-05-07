class: CommandLineTool
id: gct2gctx.cwl
inputs:
- id: filename
  doc: '.gct file that you would like to convert to .gctx (default: None)'
  type: File
  inputBinding:
    prefix: -filename
- id: output_file_path
  doc: 'out path/name for output gctx file. Default is just to modify the extension
    (default: None)'
  type: string
  inputBinding:
    prefix: -output_filepath
- id: verbose
  doc: 'Whether to print a bunch of output. (default: False)'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: row_an_not_path
  doc: 'Path to annotations file for rows (default: None)'
  type: string
  inputBinding:
    prefix: -row_annot_path
- id: col_an_not_path
  doc: 'Path to annotations file for columns (default: None)'
  type: string
  inputBinding:
    prefix: -col_annot_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gct2gctx
