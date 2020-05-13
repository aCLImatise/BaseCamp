class: CommandLineTool
id: merge_flags.py.cwl
inputs:
- id: input
  doc: Input any number of flag files that have the same indexes
  type: string[]
  inputBinding:
    prefix: --input
- id: filename
  doc: Filename for input data.
  type: File[]
  inputBinding:
    prefix: --filename
- id: flag_uniqid
  doc: Name of the column with unique identifiers in the flag files.
  type: string
  inputBinding:
    prefix: --flagUniqID
- id: output
  doc: Output file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_flags.py
