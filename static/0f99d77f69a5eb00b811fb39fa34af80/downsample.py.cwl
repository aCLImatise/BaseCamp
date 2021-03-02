class: CommandLineTool
id: downsample.py.cwl
inputs:
- id: in_reads
  doc: "Readfile (flag can be used repeatadly to process\nseveral files"
  type: File?
  inputBinding:
    prefix: --reads
- id: in_sample
  doc: "Desired size of subsample in percent (1-100; default =\n50)"
  type: long?
  inputBinding:
    prefix: --sample
- id: in_interleave
  doc: "Optional. In case of two input files, data will be\ninterleaved from these\
    \ in the output. Otherwise data\nwill be treated as already interleaved."
  type: boolean?
  inputBinding:
    prefix: --interleave
- id: in_seed
  doc: Optional. Seed for random number generator
  type: long?
  inputBinding:
    prefix: --seed
- id: in_vdot_zero_dot_one
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mitobim:1.9.1--0
cwlVersion: v1.1
baseCommand:
- downsample.py
