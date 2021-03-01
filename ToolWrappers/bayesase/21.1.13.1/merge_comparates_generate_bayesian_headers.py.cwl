class: CommandLineTool
id: merge_comparates_generate_bayesian_headers.py.cwl
inputs:
- id: in_output
  doc: "Output directory for complete merged comparate files\nready for Bayesian"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_ase_count_table_collection_identifiers
  doc: ASE count table collection identifiers
  type: string?
  inputBinding:
    prefix: --collection_identifiers
- id: in_collection_filenames
  doc: ASE count table collection filenames
  type: string?
  inputBinding:
    prefix: --collection_filenames
- id: in_design
  doc: Design file
  type: File?
  inputBinding:
    prefix: --design
- id: in_debug
  doc: Print debugging output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_collectionfilenames
  doc: -collection_filenames
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory for complete merged comparate files\nready for Bayesian"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- merge_comparates_generate_bayesian_headers.py
