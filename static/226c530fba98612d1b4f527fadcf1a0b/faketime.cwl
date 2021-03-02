class: CommandLineTool
id: faketime.cwl
inputs:
- id: in_use_multithreaded_version
  doc: ': Use the multi-threaded version of libfaketime'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_use_advanced_format
  doc: ': Use the advanced timestamp specification format (see manpage)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_exclude_monotonic
  doc: ': Prevent monotonic clock from drifting (not the raw monotonic one)'
  type: boolean?
  inputBinding:
    prefix: --exclude-monotonic
- id: in_switches
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_timestamp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_program_with_arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tbl2asn-forever:25.7.2f--h516909a_0
cwlVersion: v1.1
baseCommand:
- faketime
