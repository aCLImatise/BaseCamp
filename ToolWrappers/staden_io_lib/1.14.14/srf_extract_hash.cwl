class: CommandLineTool
id: srf_extract_hash.cwl
inputs:
- id: in_c
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_fast_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -fastq
- id: in_trace_name
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
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0
cwlVersion: v1.1
baseCommand:
- srf_extract_hash
