class: CommandLineTool
id: fastspar_bootstrap.cwl
inputs:
- id: in_otu_table
  doc: OTU input table
  type: File?
  inputBinding:
    prefix: --otu_table
- id: in_number
  doc: Number of bootstrap samples to generate
  type: File?
  inputBinding:
    prefix: --number
- id: in_prefix
  doc: Prefix out bootstrap output files
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: 'Number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_seed
  doc: 'Random number generator seed (default: 1)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_bootstraps
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastspar:1.0.0--h7f8d780_0
cwlVersion: v1.1
baseCommand:
- fastspar_bootstrap
