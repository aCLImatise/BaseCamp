class: CommandLineTool
id: run_tipp_tool.py.cwl
inputs:
- id: in_gene
  doc: use GENE's reference package
  type: string?
  inputBinding:
    prefix: --gene
- id: in_action
  doc: Run ACTION
  type: string?
  inputBinding:
    prefix: --action
- id: in_output
  doc: OUTPUT directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_threshold
  doc: "threshold for classification\n"
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_prefix
  doc: -i INPUT, --input INPUT
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: OUTPUT directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- run_tipp_tool.py
