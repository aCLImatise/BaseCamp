#!/usr/bin/env cwl-runner

baseCommand:
- precompute-distributions
class: CommandLineTool
cwlVersion: v1.0
id: precompute-distributions
inputs:
- doc: ''
  id: distribution_file
  inputBinding:
    position: 0
  type: string
- doc: '[ --max_count ] arg (=500) Value up to which distributions are to be  computed.'
  id: n
  inputBinding:
    prefix: -N
  type: boolean
