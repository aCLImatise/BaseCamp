class: CommandLineTool
id: mtsv_tree_build.cwl
inputs:
- id: v
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: index
  doc: Output path to mtsv-inform index file.
  type: string
  inputBinding:
    prefix: --index
- id: dump
  doc: Path to NCBI taxdump.tar.gz file which matches the given FASTA file.
  type: string
  inputBinding:
    prefix: --dump
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-tree-build
