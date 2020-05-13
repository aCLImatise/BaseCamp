class: CommandLineTool
id: fastspar.cwl
inputs:
- id: otu_table
  doc: OTU input OTU count table
  type: File
  inputBinding:
    prefix: --otu_table
- id: correlation
  doc: Correlation output table
  type: File
  inputBinding:
    prefix: -correlation
- id: covariance
  doc: Covariance output table
  type: File
  inputBinding:
    prefix: --covariance
- id: iterations
  doc: 'Number of interations to perform (default: 50)'
  type: long
  inputBinding:
    prefix: --iterations
- id: exclusion_iterations
  doc: 'Number of exclusion interations to perform (default: 10)'
  type: long
  inputBinding:
    prefix: --exclusion_iterations
- id: threshold
  doc: 'Correlation strength exclusion threshold (default: 0.1)'
  type: double
  inputBinding:
    prefix: --threshold
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
- id: yes
  doc: 'Assume yes for prompts (default: unset)'
  type: boolean
  inputBinding:
    prefix: --yes
- id: v
  doc: --version Display version information and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fastspar
