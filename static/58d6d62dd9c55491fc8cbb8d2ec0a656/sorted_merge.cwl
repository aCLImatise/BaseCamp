class: CommandLineTool
id: sorted_merge.cwl
inputs:
- id: key
  doc: Key (1 base column number) for sorting (1)
  type: string
  inputBinding:
    prefix: --key
- id: output
  doc: Output file instead of stdout (/dev/fd/1)
  type: File
  inputBinding:
    prefix: --output
- id: numerical
  doc: Numerical sort (false)
  type: boolean
  inputBinding:
    prefix: --numerical
outputs: []
cwlVersion: v1.1
baseCommand:
- sorted_merge
