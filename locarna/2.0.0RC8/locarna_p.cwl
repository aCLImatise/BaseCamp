#!/usr/bin/env cwl-runner

baseCommand:
- locarna_p
class: CommandLineTool
cwlVersion: v1.0
id: locarna_p
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
- doc: Be verbose. Prints input parameters, sequences and size information.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Be quiet.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Use extended precision for partition function values. This increases run-time
    and space (less than 2x), however enables handling significantly larger instances.
  id: extended_pf
  inputBinding:
    prefix: --extended-pf
  type: boolean
- doc: Use quad precision for partition function values. Even more precision than
    extended pf, but usually much slower (overrides extended-pf).
  id: quad_pf
  inputBinding:
    prefix: --quad-pf
  type: boolean
- doc: Include arc match cases in base match probabilities
  id: include_am_in_bm
  inputBinding:
    prefix: --include-am-in-bm
  type: boolean
- doc: Print run time informations.
  id: stopwatch
  inputBinding:
    prefix: --stopwatch
  type: boolean
- doc: Use relaxed semantics of anchor constraints [default=strict semantics].
  id: relaxed_anchors
  inputBinding:
    prefix: --relaxed-anchors
  type: boolean
