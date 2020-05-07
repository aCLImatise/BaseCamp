class: CommandLineTool
id: pybel_serialize.cwl
inputs:
- id: csv
  doc: Path to output a CSV file.
  type: File
  inputBinding:
    prefix: --csv
- id: s_if
  doc: Path to output an SIF file.
  type: File
  inputBinding:
    prefix: --sif
- id: g_sea
  doc: Path to output a GRP file for gene set enrichment analysis.
  type: File
  inputBinding:
    prefix: --gsea
- id: graph_ml
  doc: Path to output a GraphML file. Use .graphml for Cytoscape.
  type: string
  inputBinding:
    prefix: --graphml
- id: json
  doc: Path to output a node-link JSON file.
  type: File
  inputBinding:
    prefix: --json
- id: bel
  doc: Output canonical BEL.
  type: File
  inputBinding:
    prefix: --bel
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- serialize
