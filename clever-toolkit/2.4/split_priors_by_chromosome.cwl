class: CommandLineTool
id: split_priors_by_chromosome.cwl
inputs:
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: z
  doc: GZIP output files
  type: boolean
  inputBinding:
    prefix: -z
- id: c
  doc: Only extracts given chromosomes. Expects comma-separated list.
  type: string
  inputBinding:
    prefix: -c
- id: s
  doc: Read header of given BAM file and priors split by sample (encoded in read groups).
  type: string
  inputBinding:
    prefix: -s
- id: g
  doc: Use gzip instead of python zip module. Can be faster, but will spawn one gzip
    process for every chromosome/sample, which can be a lot.
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- split-priors-by-chromosome
