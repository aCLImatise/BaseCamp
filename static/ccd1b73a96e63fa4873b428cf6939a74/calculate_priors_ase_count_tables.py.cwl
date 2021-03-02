class: CommandLineTool
id: calculate_priors_ase_count_tables.py.cwl
inputs:
- id: in_output
  doc: Output directory for filtered ase counts
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_design
  doc: Design file
  type: File?
  inputBinding:
    prefix: --design
- id: in_collection_identifiers
  doc: Input original names [Required]
  type: string?
  inputBinding:
    prefix: --collection_identifiers
- id: in_collection_filenames
  doc: Input galaxy names [Required]
  type: string?
  inputBinding:
    prefix: --collection_filenames
- id: in_debug
  doc: Print debugging output
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory for filtered ase counts
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- calculate_priors_ase_count_tables.py
