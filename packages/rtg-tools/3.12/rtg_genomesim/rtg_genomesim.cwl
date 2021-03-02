class: CommandLineTool
id: rtg_genomesim.cwl
inputs:
- id: in_output
  doc: output SDF
  type: string?
  inputBinding:
    prefix: --output
- id: in_comment
  doc: comment to include in the generated SDF
  type: string?
  inputBinding:
    prefix: --comment
- id: in_freq
  doc: "relative frequencies of A,C,G,T in the generated\nsequence (Default is 1,1,1,1)"
  type: long?
  inputBinding:
    prefix: --freq
- id: in_length
  doc: "length of generated sequence. May be specified 0 or\nmore times, or as a comma\
    \ separated list"
  type: long?
  inputBinding:
    prefix: --length
- id: in_max_length
  doc: maximum sequence length
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_min_length
  doc: minimum sequence length
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_num_contigs
  doc: number of sequences to generate
  type: long?
  inputBinding:
    prefix: --num-contigs
- id: in_prefix
  doc: sequence name prefix (Default is simulatedSequence)
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_seed
  doc: seed for random number generator
  type: long?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- genomesim
