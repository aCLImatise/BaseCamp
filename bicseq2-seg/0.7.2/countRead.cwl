#!/usr/bin/env cwl-runner

baseCommand:
- countRead
class: CommandLineTool
cwlVersion: v1.0
id: countread
inputs:
- doc: ''
  id: region_file
  inputBinding:
    position: 0
  type: string
- doc: ': the normalized data for the case genome; This is is an required option'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ': the normalized data for the control genome; This is optional.'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ': the output file; Default is <stdout>'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': the chromosome name'
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
