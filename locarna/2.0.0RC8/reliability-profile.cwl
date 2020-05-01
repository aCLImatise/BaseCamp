#!/usr/bin/env cwl-runner

baseCommand:
- reliability-profile.pl
class: CommandLineTool
cwlVersion: v1.0
id: reliability-profile.pl
inputs:
- doc: ''
  id: loca_rna_output_dir
  inputBinding:
    position: 0
  type: string
