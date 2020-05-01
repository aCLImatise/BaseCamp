#!/usr/bin/env cwl-runner

baseCommand:
- SVwiden
class: CommandLineTool
cwlVersion: v1.0
id: svwiden
inputs:
- doc: 'Specify a string to be written as the reference name in the ##reference line
    of the VCF header.'
  id: refname
  inputBinding:
    prefix: --refname
  type: string
- doc: Flag option to suppress printout of the VCF header.
  id: noheader
  inputBinding:
    prefix: --noheader
  type: boolean
