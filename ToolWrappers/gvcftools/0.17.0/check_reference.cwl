class: CommandLineTool
id: check_reference.cwl
inputs:
- id: in_ref
  doc: samtools reference sequence (required)
  type: string?
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- check_reference
