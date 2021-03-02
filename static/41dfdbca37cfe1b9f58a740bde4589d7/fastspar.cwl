class: CommandLineTool
id: fastspar.cwl
inputs:
- id: in_otu_table
  doc: OTU input OTU count table
  type: File?
  inputBinding:
    prefix: --otu_table
- id: in_correlation
  doc: Correlation output table
  type: File?
  inputBinding:
    prefix: -correlation
- id: in_covariance
  doc: Covariance output table
  type: File?
  inputBinding:
    prefix: --covariance
- id: in_iterations
  doc: 'Number of interations to perform (default: 50)'
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_exclusion_iterations
  doc: 'Number of exclusion interations to perform (default: 10)'
  type: long?
  inputBinding:
    prefix: --exclusion_iterations
- id: in_threshold
  doc: 'Correlation strength exclusion threshold (default: 0.1)'
  type: double?
  inputBinding:
    prefix: --threshold
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
- id: in_yes
  doc: 'Assume yes for prompts (default: unset)'
  type: boolean?
  inputBinding:
    prefix: --yes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastspar
