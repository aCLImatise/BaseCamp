class: CommandLineTool
id: pm_invert.cwl
inputs:
- id: in_i_whole_name
  doc: '[+-]MODE -regex PATTERN'
  type: string?
  inputBinding:
    prefix: -iwholename
- id: in_x_type
  doc: '[bcdpfls]'
  type: string?
  inputBinding:
    prefix: -xtype
- id: in_fprintf
  doc: FORMAT -print
  type: string?
  inputBinding:
    prefix: -fprintf
- id: in_f_print_zero
  doc: ; -exec COMMAND {} + -ok COMMAND ;
  type: File?
  inputBinding:
    prefix: -fprint0
- id: in_exec_dir
  doc: ; -execdir COMMAND {} + -okdir COMMAND ;
  type: string?
  inputBinding:
    prefix: -execdir
- id: in_o_level
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Olevel
- id: in_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_l
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_h
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_find
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
  dockerPull: quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1
cwlVersion: v1.1
baseCommand:
- pm-invert
