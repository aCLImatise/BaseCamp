class: CommandLineTool
id: ../../../mtsv_signature.cwl
inputs:
- id: in_family
  doc: "Enable to search for a common FAMILY among hits for a read (takes priority\
    \ over LCA search when a\nfamily exists for a taxonomic ID)."
  type: boolean
  inputBinding:
    prefix: --family
- id: in_genus
  doc: "Enable to search for a common GENUS among hits for a read (takes priority\
    \ over LCA search when a\nfamily exists for a taxonomic ID)."
  type: boolean
  inputBinding:
    prefix: --genus
- id: in_include_flag_trigger
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_index
  doc: Path to index built by mtsv-tree-build utility.
  type: File
  inputBinding:
    prefix: --index
- id: in_input
  doc: Path to mtsv results file.
  type: File
  inputBinding:
    prefix: --input
- id: in_lca
  doc: "Height at which the search will attempt to find a common ancestor among the\
    \ hits for\na read. [values: 0, 1, 2, 3]"
  type: long
  inputBinding:
    prefix: --lca
- id: in_threads
  doc: 'Number of worker threads to spawn. [default: 4]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Output path to write "informativeness" results.
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output path to write "informativeness" results.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- mtsv-signature
