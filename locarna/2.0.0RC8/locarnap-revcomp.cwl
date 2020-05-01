#!/usr/bin/env cwl-runner

baseCommand:
- locarnap-revcomp.pl
class: CommandLineTool
cwlVersion: v1.0
id: locarnap-revcomp.pl
inputs:
- doc: ''
  id: fast_a_files
  inputBinding:
    position: 0
  type: string
