#!/usr/bin/env cwl-runner

baseCommand:
- grabdp
class: CommandLineTool
cwlVersion: v1.0
id: grabdp
inputs:
- doc: required (or -modelfile)
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: required if -match_probs not specified
  id: db
  inputBinding:
    prefix: -db
  type: string
- doc: optional
  id: id
  inputBinding:
    prefix: -id
  type: string
- doc: 2            optional -- create <runname>.pdoc posterior decoding of model
    and first db sequence or -id sequence. use view_pdoc to inspect.
  id: dp_style
  inputBinding:
    prefix: -dpstyle
  type: boolean
- doc: 0   If 1, then dump the model match probabilities in a rdb file name <runname>.match-rdb
  id: dump_match_probs
  inputBinding:
    prefix: -dump_match_probs
  type: boolean
