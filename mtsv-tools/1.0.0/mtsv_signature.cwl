class: CommandLineTool
id: mtsv_signature.cwl
inputs:
- id: family
  doc: Enable to search for a common FAMILY among hits for a read (takes priority
    over LCA search when a family exists for a taxonomic ID).
  type: boolean
  inputBinding:
    prefix: --family
- id: genus
  doc: Enable to search for a common GENUS among hits for a read (takes priority over
    LCA search when a family exists for a taxonomic ID).
  type: boolean
  inputBinding:
    prefix: --genus
- id: v
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: index
  doc: Path to index built by mtsv-tree-build utility.
  type: string
  inputBinding:
    prefix: --index
- id: input
  doc: Path to mtsv results file.
  type: string
  inputBinding:
    prefix: --input
- id: lca
  doc: 'Height at which the search will attempt to find a common ancestor among the
    hits for a read. [values: 0, 1, 2, 3]'
  type: string
  inputBinding:
    prefix: --lca
- id: threads
  doc: 'Number of worker threads to spawn. [default: 4]'
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: Output path to write "informativeness" results.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-signature
