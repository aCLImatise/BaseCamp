class: CommandLineTool
id: ../../../ErrorCorrection_kmerfreq.cwl
inputs:
- id: consecutive_kmer_size
  doc: 'Consecutive Kmer Size, Default: 17'
  type: long
  inputBinding:
    prefix: -k
- id: space_kmer_solid
  doc: 'Space Kmer Solid Part Size, Default: 16'
  type: long
  inputBinding:
    prefix: -K
- id: space_kmer_space
  doc: 'Space Kmer Space Part Size, Default: 9'
  type: long
  inputBinding:
    prefix: -S
- id: output_prefix_output
  doc: 'Output prefix, Default: output'
  type: string
  inputBinding:
    prefix: -p
- id: increase_verbosity_times
  doc: Increase Verbosity, 3 times max
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ErrorCorrection
- kmerfreq
