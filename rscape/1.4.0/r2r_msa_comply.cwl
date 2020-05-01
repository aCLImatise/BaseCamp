#!/usr/bin/env cwl-runner

baseCommand:
- r2r_msa_comply.pl
class: CommandLineTool
cwlVersion: v1.0
id: r2r_msa_comply.pl
inputs:
- doc: ''
  id: msa_file
  inputBinding:
    position: 0
  type: string
