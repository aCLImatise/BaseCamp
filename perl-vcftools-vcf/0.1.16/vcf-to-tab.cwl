#!/usr/bin/env cwl-runner

baseCommand:
- vcf-to-tab
class: CommandLineTool
cwlVersion: v1.0
id: vcf-to-tab
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_vcf
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_tab
  inputBinding:
    position: 2
  type: string
- doc: Use one-letter IUPAC codes
  id: iupac
  inputBinding:
    prefix: --iupac
  type: boolean
