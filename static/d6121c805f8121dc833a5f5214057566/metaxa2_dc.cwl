class: CommandLineTool
id: metaxa2_dc.cwl
inputs:
- id: in__output_file
  doc: ': Output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_column_containing_taxon_default
  doc: ': Column containing taxon data, default = 0'
  type: string?
  inputBinding:
    prefix: -t
- id: in_column_containing_data_default
  doc: ': Column containing count data, default = 1'
  type: string?
  inputBinding:
    prefix: -c
- id: in_string_removed_file
  doc: ": String to be removed from the file name for use as sample name. Regular\
    \ expressions can be used. Default = '.level_[0-9].txt'"
  type: string?
  inputBinding:
    prefix: -r
- id: in_regular_expression_pattern
  doc: ": Regular expression pattern for selecting the sample name from the file name.\
    \ Default = '.*' (will cover full file name)"
  type: string?
  inputBinding:
    prefix: -p
- id: in_help
  doc: ': displays this help message'
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_bugs
  doc: ': displays the bug fixes and known bugs in this version of Metaxa'
  type: boolean?
  inputBinding:
    prefix: --bugs
- id: in_license
  doc: ': displays licensing information'
  type: boolean?
  inputBinding:
    prefix: --license
- id: in_input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: ': Output file'
  type: File?
  outputBinding:
    glob: $(inputs.in__output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- metaxa2_dc
