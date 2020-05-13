class: CommandLineTool
id: ErrorCorrection_kmerfreq.cwl
inputs:
- id: k
  doc: 'Consecutive Kmer Size, Default: 17'
  type: long
  inputBinding:
    prefix: -k
- id: k
  doc: 'Space Kmer Solid Part Size, Default: 16'
  type: long
  inputBinding:
    prefix: -K
- id: s
  doc: 'Space Kmer Space Part Size, Default: 9'
  type: long
  inputBinding:
    prefix: -S
- id: p
  doc: 'Output prefix, Default: output'
  type: string
  inputBinding:
    prefix: -p
- id: v
  doc: Increase Verbosity, 3 times max
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ErrorCorrection
- kmerfreq
