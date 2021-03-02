class: CommandLineTool
id: Bandage_info.cwl
inputs:
- id: in_tsv
  doc: Output the information in a single tab-delimited line starting with the graph
    file
  type: File?
  inputBinding:
    prefix: --tsv
- id: in_help_all
  doc: View all command line settings
  type: boolean?
  inputBinding:
    prefix: --helpall
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tsv
  doc: Output the information in a single tab-delimited line starting with the graph
    file
  type: File?
  outputBinding:
    glob: $(inputs.in_tsv)
hints: []
cwlVersion: v1.1
baseCommand:
- Bandage
- info
