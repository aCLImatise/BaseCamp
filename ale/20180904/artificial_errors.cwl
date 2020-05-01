#!/usr/bin/env cwl-runner

baseCommand:
- artificial_errors.py
class: CommandLineTool
cwlVersion: v1.0
id: artificial_errors.py
inputs:
- doc: '<i>     : add substitution error at <location> for <length>'
  id: ase
  inputBinding:
    prefix: -ase
  type: string
- doc: '<i>     : add deletion error at <location> for <length>'
  id: ade
  inputBinding:
    prefix: -ade
  type: string
- doc: '<i>     : add insertion error at <location> for <length>'
  id: a_ie
  inputBinding:
    prefix: -aie
  type: string
- doc: '<i>     : add inversion error at <location> for <length>'
  id: in_v
  inputBinding:
    prefix: -inv
  type: string
- doc: '<i>     : copy part of the assembly at <location> for <length>'
  id: cip
  inputBinding:
    prefix: -cip
  type: string
- doc: '<i> <i> : transpose assembly from <start> to <end> placing it at <pos>'
  id: trp
  inputBinding:
    prefix: -trp
  type: string
- doc: '<i>         : add a break (split into 2 contigs) at <location>'
  id: ab
  inputBinding:
    prefix: -ab
  type: boolean
- doc: '<s>         : output file name (error_ + inputfile.fna)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
