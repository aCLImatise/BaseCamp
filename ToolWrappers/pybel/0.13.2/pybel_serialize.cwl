class: CommandLineTool
id: pybel_serialize.cwl
inputs:
- id: in_csv
  doc: Path to output a CSV file.
  type: File?
  inputBinding:
    prefix: --csv
- id: in_s_if
  doc: Path to output an SIF file.
  type: File?
  inputBinding:
    prefix: --sif
- id: in_g_sea
  doc: Path to output a GRP file for gene set enrichment analysis.
  type: File?
  inputBinding:
    prefix: --gsea
- id: in_graph_ml
  doc: Path to output a GraphML file. Use .graphml for Cytoscape.
  type: File?
  inputBinding:
    prefix: --graphml
- id: in_json
  doc: Path to output a node-link JSON file.
  type: File?
  inputBinding:
    prefix: --json
- id: in_bel
  doc: Output canonical BEL.
  type: File?
  inputBinding:
    prefix: --bel
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_csv
  doc: Path to output a CSV file.
  type: File?
  outputBinding:
    glob: $(inputs.in_csv)
- id: out_s_if
  doc: Path to output an SIF file.
  type: File?
  outputBinding:
    glob: $(inputs.in_s_if)
- id: out_g_sea
  doc: Path to output a GRP file for gene set enrichment analysis.
  type: File?
  outputBinding:
    glob: $(inputs.in_g_sea)
- id: out_graph_ml
  doc: Path to output a GraphML file. Use .graphml for Cytoscape.
  type: File?
  outputBinding:
    glob: $(inputs.in_graph_ml)
- id: out_json
  doc: Path to output a node-link JSON file.
  type: File?
  outputBinding:
    glob: $(inputs.in_json)
hints: []
cwlVersion: v1.1
baseCommand:
- pybel
- serialize
