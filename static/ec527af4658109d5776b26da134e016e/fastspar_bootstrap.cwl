class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastspar_bootstrap.cwl
inputs:
- id: c_slash_otu_table
  doc: OTU input table
  type: File
  inputBinding:
    prefix: -c/--otu_table
- id: n_slash_number
  doc: Number of bootstrap samples to generate
  type: File
  inputBinding:
    prefix: -n/--number
- id: p_slash_prefix
  doc: Prefix out bootstrap output files
  type: string
  inputBinding:
    prefix: -p/--prefix
- id: threads
  doc: 'Number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: seed
  doc: 'Random number generator seed (default: 1)'
  type: long
  inputBinding:
    prefix: --seed
- id: _version_display
  doc: --version Display version information and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: otu_table
  doc: ''
  type: File
  inputBinding:
    prefix: --otu_table
- id: number
  doc: ''
  type: long
  inputBinding:
    prefix: --number
- id: prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: bootstraps
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastspar_bootstrap
