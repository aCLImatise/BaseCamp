class: CommandLineTool
id: haphpipe_assemble_02.cwl
inputs:
- id: in_read_one
  doc: ''
  type: long?
  inputBinding:
    position: 0
- id: in_read_two
  doc: ''
  type: long?
  inputBinding:
    position: 1
- id: in_amplicons_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_samp_id
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haphpipe:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- haphpipe_assemble_02
