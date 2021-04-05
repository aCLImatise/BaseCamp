class: CommandLineTool
id: gridss.cwl
inputs:
- id: in_verbose
  doc: Verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_posix_output_format
  doc: POSIX output format
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_custom_format
  doc: Custom format
  type: string?
  inputBinding:
    prefix: -f
- id: in_write_result_file
  doc: Write result to FILE
  type: File?
  inputBinding:
    prefix: -o
- id: in_append_else_overwrite
  doc: Append (else overwrite)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_vpa
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vpa
- id: in_time
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
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
  dockerPull: quay.io/biocontainers/gridss:2.11.0--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- gridss
