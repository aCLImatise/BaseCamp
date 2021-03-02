class: CommandLineTool
id: artificial_errors.py.cwl
inputs:
- id: in_ase
  doc: '<i>     : add substitution error at <location> for <length>'
  type: long?
  inputBinding:
    prefix: -ase
- id: in_ade
  doc: '<i>     : add deletion error at <location> for <length>'
  type: long?
  inputBinding:
    prefix: -ade
- id: in_a_ie
  doc: '<i>     : add insertion error at <location> for <length>'
  type: long?
  inputBinding:
    prefix: -aie
- id: in_in_v
  doc: '<i>     : add inversion error at <location> for <length>'
  type: long?
  inputBinding:
    prefix: -inv
- id: in_cip
  doc: '<i>     : copy part of the assembly at <location> for <length>'
  type: long?
  inputBinding:
    prefix: -cip
- id: in_trp
  doc: '<i> <i> : transpose assembly from <start> to <end> placing it at <pos>'
  type: string?
  inputBinding:
    prefix: -trp
- id: in_ab
  doc: '<i>         : add a break (split into 2 contigs) at <location>'
  type: boolean?
  inputBinding:
    prefix: -ab
- id: in_s_name_error
  doc: '<s>         : output file name (error_ + inputfile.fna)'
  type: boolean?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- artificial_errors.py
