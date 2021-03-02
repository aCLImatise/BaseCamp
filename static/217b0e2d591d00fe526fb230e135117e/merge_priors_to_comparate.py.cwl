class: CommandLineTool
id: merge_priors_to_comparate.py.cwl
inputs:
- id: in_design
  doc: Design file
  type: File?
  inputBinding:
    prefix: --design
- id: in_collection_one_identifiers
  doc: ASE count table collection identifiers
  type: long?
  inputBinding:
    prefix: --collection1_identifiers
- id: in_collection_one_filenames
  doc: ASE count table collection filenames
  type: long?
  inputBinding:
    prefix: --collection1_filenames
- id: in_collection_two_identifiers
  doc: Prior count table collection identifiers
  type: long?
  inputBinding:
    prefix: --collection2_identifiers
- id: in_collection_two_filenames
  doc: ASE count table collection filenames
  type: long?
  inputBinding:
    prefix: --collection2_filenames
- id: in_out
  doc: "Output directory for complete merged comparate files\nready for Bayesian\n"
  type: Directory?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output directory for complete merged comparate files\nready for Bayesian\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- merge_priors_to_comparate.py
