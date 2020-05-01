#!/usr/bin/env cwl-runner

baseCommand:
- FamSeq
class: CommandLineTool
cwlVersion: v1.0
id: famseq
inputs:
- doc: input vcf file
  id: vcf
  inputBinding:
    position: 0
  type: string
- doc: input likelihood file
  id: lk
  inputBinding:
    position: 1
  type: string
