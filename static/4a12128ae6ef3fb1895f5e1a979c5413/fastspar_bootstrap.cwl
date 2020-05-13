class: CommandLineTool
id: fastspar_bootstrap.cwl
inputs:
- id: c
  doc: /--otu_table <path> OTU input table
  type: boolean
  inputBinding:
    prefix: -c
- id: n
  doc: /--number <path> Number of bootstrap samples to generate
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: /--prefix <str> Prefix out bootstrap output files
  type: boolean
  inputBinding:
    prefix: -p
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
- id: v
  doc: --version Display version information and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fastspar_bootstrap
