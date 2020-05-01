#!/usr/bin/env cwl-runner

baseCommand:
- square_mash
class: CommandLineTool
cwlVersion: v1.0
id: square_mash
inputs:
- doc: Output table in a format suitable for R_mds.pl
  id: classic
  inputBinding:
    prefix: --classic
  type: boolean
