class: CommandLineTool
id: split_priors_by_chromosome.cwl
inputs:
- id: in_gzip_output_files
  doc: GZIP output files
  type: boolean
  inputBinding:
    prefix: -z
- id: in_only_extracts_given
  doc: Only extracts given chromosomes. Expects comma-separated
  type: string
  inputBinding:
    prefix: -c
- id: in_use_gzip_instead
  doc: "Use gzip instead of python zip module. Can be faster, but\nwill spawn one\
    \ gzip process for every chromosome/sample,\nwhich can be a lot.\n"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_list_dot
  doc: -s SAMPLEWISE   Read header of given BAM file and priors split by sample
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- split-priors-by-chromosome
