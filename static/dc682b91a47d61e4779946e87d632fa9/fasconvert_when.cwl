class: CommandLineTool
id: fasconvert_when.cwl
inputs:
- id: in_fi
  doc: ''
  type: string?
  inputBinding:
    prefix: -fi
- id: in_fo
  doc: ''
  type: string?
  inputBinding:
    prefix: -fo
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_fas_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_other_format_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_other_format
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
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- fasconvert
- when
