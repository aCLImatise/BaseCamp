class: CommandLineTool
id: ../../../split_priors_by_chromosome.cwl
inputs:
- id: gzip_output_files
  doc: GZIP output files
  type: boolean
  inputBinding:
    prefix: -z
- id: only_extracts_given
  doc: Only extracts given chromosomes. Expects comma-separated list.
  type: string
  inputBinding:
    prefix: -c
- id: read_header_given
  doc: Read header of given BAM file and priors split by sample (encoded in read groups).
  type: string
  inputBinding:
    prefix: -s
- id: use_gzip_instead
  doc: Use gzip instead of python zip module. Can be faster, but will spawn one gzip
    process for every chromosome/sample, which can be a lot.
  type: boolean
  inputBinding:
    prefix: -g
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- split-priors-by-chromosome
