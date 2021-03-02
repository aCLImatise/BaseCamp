class: CommandLineTool
id: cooltools_random_sample.cwl
inputs:
- id: in_count
  doc: "The target number of contacts in the sample. The\nresulting sample size will\
    \ not match it precisely.\nMutually exclusive with --frac"
  type: long?
  inputBinding:
    prefix: --count
- id: in_frac
  doc: "The target sample size as a fraction of contacts in the\noriginal dataset.\
    \ Mutually exclusive with --count"
  type: double?
  inputBinding:
    prefix: --frac
- id: in_exact
  doc: "If specified, use exact sampling that guarantees the\nsize of the output sample.\
    \ Otherwise, binomial sampling\nwill be used and the sample size will be distributed\n\
    around the target value."
  type: boolean?
  inputBinding:
    prefix: --exact
- id: in_chunksize
  doc: The number of pixels loaded and processed per step of
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_in_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- cooltools
- random-sample
