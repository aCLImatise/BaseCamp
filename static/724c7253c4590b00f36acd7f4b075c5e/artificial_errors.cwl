class: CommandLineTool
id: artificial_errors.py.cwl
inputs:
- id: ase
  doc: '<i>     : add substitution error at <location> for <length>'
  type: string
  inputBinding:
    prefix: -ase
- id: ade
  doc: '<i>     : add deletion error at <location> for <length>'
  type: string
  inputBinding:
    prefix: -ade
- id: a_ie
  doc: '<i>     : add insertion error at <location> for <length>'
  type: string
  inputBinding:
    prefix: -aie
- id: in_v
  doc: '<i>     : add inversion error at <location> for <length>'
  type: string
  inputBinding:
    prefix: -inv
- id: cip
  doc: '<i>     : copy part of the assembly at <location> for <length>'
  type: string
  inputBinding:
    prefix: -cip
- id: trp
  doc: '<i> <i> : transpose assembly from <start> to <end> placing it at <pos>'
  type: string
  inputBinding:
    prefix: -trp
- id: ab
  doc: '<i>         : add a break (split into 2 contigs) at <location>'
  type: boolean
  inputBinding:
    prefix: -ab
- id: o
  doc: '<s>         : output file name (error_ + inputfile.fna)'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- artificial_errors.py
