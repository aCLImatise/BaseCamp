class: CommandLineTool
id: sga_graph_concordance.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_reference
  doc: load the reference genome from FILE
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: 'use NUM threads to compute the overlaps (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_germline
  doc: load germline variants from FILE
  type: File?
  inputBinding:
    prefix: --germline
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- graph-concordance
