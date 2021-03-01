class: CommandLineTool
id: phenotyping.py.cwl
inputs:
- id: in_input
  doc: "Input genome. Must be either: a valid contigs file or\na json genome file."
  type: File?
  inputBinding:
    prefix: --input
- id: in_evalue
  doc: E-value for BLAST to Pathways DB
  type: string?
  inputBinding:
    prefix: --evalue
- id: in_json
  doc: "Specifies that you're using an already processed JSON\ninput.\n"
  type: string?
  inputBinding:
    prefix: --json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phenotyping.py
