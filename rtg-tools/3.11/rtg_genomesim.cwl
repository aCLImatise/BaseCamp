class: CommandLineTool
id: rtg_genomesim.cwl
inputs:
- id: output
  doc: output SDF
  type: string
  inputBinding:
    prefix: --output
- id: comment
  doc: comment to include in the generated SDF
  type: string
  inputBinding:
    prefix: --comment
- id: freq
  doc: relative frequencies of A,C,G,T in the generated sequence (Default is 1,1,1,1)
  type: string
  inputBinding:
    prefix: --freq
- id: length
  doc: length of generated sequence. May be specified 0 or more times, or as a comma
    separated list
  type: long
  inputBinding:
    prefix: --length
- id: max_length
  doc: maximum sequence length
  type: long
  inputBinding:
    prefix: --max-length
- id: min_length
  doc: minimum sequence length
  type: long
  inputBinding:
    prefix: --min-length
- id: num_contigs
  doc: number of sequences to generate
  type: long
  inputBinding:
    prefix: --num-contigs
- id: prefix
  doc: sequence name prefix (Default is simulatedSequence)
  type: string
  inputBinding:
    prefix: --prefix
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- genomesim
