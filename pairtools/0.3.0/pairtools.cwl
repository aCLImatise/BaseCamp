#!/usr/bin/env cwl-runner

baseCommand:
- pairtools
class: CommandLineTool
cwlVersion: v1.0
id: pairtools
inputs:
- doc: Post mortem debugging
  id: post_mortem
  inputBinding:
    prefix: --post-mortem
  type: boolean
- doc: Profile performance with Python cProfile and dump the statistics into a binary
    file
  id: output_profile
  inputBinding:
    prefix: --output-profile
  type: string
