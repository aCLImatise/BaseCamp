#!/usr/bin/env cwl-runner

baseCommand:
- vcfstreamsort
class: CommandLineTool
cwlVersion: v1.0
id: vcfstreamsort
inputs:
- doc: ''
  id: vcf
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 1
  type: File
- doc: number of sites to sort (default 10000)
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: load all sites and then sort in memory
  id: all
  inputBinding:
    prefix: --all
  type: boolean
