#!/usr/bin/env cwl-runner

baseCommand:
- exparna_p
class: CommandLineTool
cwlVersion: v1.0
id: exparna_p
inputs:
- doc: ''
  id: input_1
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_2
  inputBinding:
    position: 1
  type: string
- doc: Verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Quiet
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Allow inexact structure matches
  id: in_exact_struct_match
  inputBinding:
    prefix: --inexact-struct-match
  type: boolean
- doc: Apply an additional filter to enumerate only EPMs that are maximally extended
    (only inexact)
  id: add_filter
  inputBinding:
    prefix: --add-filter
  type: boolean
- doc: Do not use the chaining algorithm to find best overall chain
  id: no_chaining
  inputBinding:
    prefix: --no-chaining
  type: boolean
- doc: Relax anchor constraints (default=off)
  id: relaxed_anchors
  inputBinding:
    prefix: --relaxed-anchors
  type: boolean
- doc: Print run time information.
  id: stopwatch
  inputBinding:
    prefix: --stopwatch
  type: boolean
