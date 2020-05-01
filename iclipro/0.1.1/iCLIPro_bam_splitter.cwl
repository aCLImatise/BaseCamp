#!/usr/bin/env cwl-runner

baseCommand:
- iCLIPro_bam_splitter
class: CommandLineTool
cwlVersion: v1.0
id: iclipro_bam_splitter
inputs:
- doc: ''
  id: in1bam
  inputBinding:
    position: 0
  type: string
- doc: output folder (default is cwd - current working directory)
  id: o
  inputBinding:
    prefix: -o
  type: Directory
- doc: 'use only reads with minimum mapping quality (mapq) (0..100, default: 10)'
  id: q
  inputBinding:
    prefix: -q
  type: long
- doc: 'read len groups (default: "A:16-39,A1:16-25,A2:26-32,A3:33-39,B:42")'
  id: g
  inputBinding:
    prefix: -g
  type: string
