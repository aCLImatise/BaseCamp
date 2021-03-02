class: CommandLineTool
id: linguistic_sequence_complexity.py.cwl
inputs:
- id: in_sequence
  doc: "input vcf file (default: None)\n"
  type: File?
  inputBinding:
    prefix: --sequence
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- linguistic_sequence_complexity.py
