class: CommandLineTool
id: reseq_test.cwl
inputs:
- id: in_arg_number_threads
  doc: '[ --threads ] arg (=0) Number of threads used (0=auto)'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_verbosity
  doc: "(=4)      Sets the level of verbosity (4=everything,\n0=nothing)"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/reseq:1.1--py38h56fca86_0
cwlVersion: v1.1
baseCommand:
- reseq
- test
