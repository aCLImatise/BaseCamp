class: CommandLineTool
id: tgt_concatenate_textgrids.py.cwl
inputs:
- id: input_files
  doc: Space-separated list of paths to TextGrid files in the order they should be
    concatenated.
  type: string[]
  inputBinding:
    prefix: --input-files
- id: output_files
  doc: Path to the resulting file.
  type: string
  inputBinding:
    prefix: --output-files
- id: encoding
  doc: File encoding (defaults to UTF-8).
  type: string
  inputBinding:
    prefix: --encoding
- id: type
  doc: 'TextGrid format: short, long (defaults to short)'
  type: string
  inputBinding:
    prefix: --type
- id: absolute_time
  doc: Interpret start and end times of annotations as absolute.
  type: boolean
  inputBinding:
    prefix: --absolute-time
outputs: []
cwlVersion: v1.1
baseCommand:
- tgt-concatenate-textgrids.py
