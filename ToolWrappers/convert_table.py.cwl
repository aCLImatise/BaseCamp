class: CommandLineTool
id: convert_table.py.cwl
inputs:
- id: in_output
  doc: "Path to output. Corresponds to folder name if multiple\nfiles are output,\
    \ otherwise it will be a filename."
  type: File
  inputBinding:
    prefix: --output
- id: in_conversion
  doc: "Type of conversion to perform ('contrib_to_legacy',\n'humann2_unstrat_to_picrust2',\n\
    'humann2_strat_to_picrust2',\n'picrust2_unstrat_to_humann2_split',\n'picrust2_strat_to_humann2_split',\
    \ or\n'picrust2_to_humann2_merged')."
  type: long
  inputBinding:
    prefix: --conversion
- id: in_raw_abun
  doc: "When converting to legacy contributional table output\nabundance (i.e. OTUAbundanceInSample\
    \ column) as raw\nabundance rather than relative abundances (relative\nabundances\
    \ are the default)."
  type: boolean
  inputBinding:
    prefix: --raw_abun
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_input
  doc: "Input table to convert. If there are multiple input\nfiles (e.g. if multiple\
    \ HUMAnN2 gene tables for\ndifferent samples should be converted to a single\n\
    PICRUSt2 table) then specify them all: file1 file2\nfile3..."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path to output. Corresponds to folder name if multiple\nfiles are output,\
    \ otherwise it will be a filename."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- convert_table.py
