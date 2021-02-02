class: CommandLineTool
id: ../../../mtsv_tree_build.cwl
inputs:
- id: in_include_flag_trigger
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_index
  doc: Output path to mtsv-inform index file.
  type: File
  inputBinding:
    prefix: --index
- id: in_dump
  doc: Path to NCBI taxdump.tar.gz file which matches the given FASTA file.
  type: File
  inputBinding:
    prefix: --dump
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_index
  doc: Output path to mtsv-inform index file.
  type: File
  outputBinding:
    glob: $(inputs.in_index)
cwlVersion: v1.1
baseCommand:
- mtsv-tree-build
