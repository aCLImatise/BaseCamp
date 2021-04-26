class: CommandLineTool
id: basenji_sad_norm.py.cwl
inputs:
- id: in_number_snps_sample
  doc: 'Number of SNPs to sample for fit [Default: 100000]'
  type: long?
  inputBinding:
    prefix: -o
- id: in_arg
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_sad_norm.py
