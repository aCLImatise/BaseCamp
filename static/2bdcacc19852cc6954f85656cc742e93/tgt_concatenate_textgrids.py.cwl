class: CommandLineTool
id: tgt_concatenate_textgrids.py.cwl
inputs:
- id: in_input_files
  doc: "Space-separated list of paths to TextGrid files in the\norder they should\
    \ be concatenated."
  type: string[]
  inputBinding:
    prefix: --input-files
- id: in_output_files
  doc: Path to the resulting file.
  type: File?
  inputBinding:
    prefix: --output-files
- id: in_encoding
  doc: File encoding (defaults to UTF-8).
  type: File?
  inputBinding:
    prefix: --encoding
- id: in_type
  doc: 'TextGrid format: short, long (defaults to short)'
  type: string?
  inputBinding:
    prefix: --type
- id: in_absolute_time
  doc: "Interpret start and end times of annotations as\nabsolute.\n"
  type: boolean?
  inputBinding:
    prefix: --absolute-time
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_files
  doc: Path to the resulting file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_files)
hints: []
cwlVersion: v1.1
baseCommand:
- tgt-concatenate-textgrids.py
