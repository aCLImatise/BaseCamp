#!/usr/bin/env cwl-runner

baseCommand:
- miranda
class: CommandLineTool
cwlVersion: v1.0
id: miranda
inputs:
- doc: ''
  id: file_1
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: file_2
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: options
  inputBinding:
    position: 2
  type: string
- doc: Display license information
  id: license
  inputBinding:
    prefix: --license
  type: boolean
- doc: 'Set score threshold to S                [DEFAULT: 140.0]'
  id: sc
  inputBinding:
    prefix: -sc
  type: string
- doc: 'Set energy threshold to -E kcal/mol     [DEFAULT: 1.0]'
  id: en
  inputBinding:
    prefix: -en
  type: boolean
- doc: 'Set scaling parameter to Z              [DEFAULT: 4.0]'
  id: scale
  inputBinding:
    prefix: -scale
  type: string
- doc: "Demand strict 5' seed pairing           [DEFAULT: off]"
  id: strict
  inputBinding:
    prefix: -strict
  type: boolean
- doc: 'Set gap-open penalty to -X              [DEFAULT: -4.0]'
  id: go
  inputBinding:
    prefix: -go
  type: boolean
- doc: 'Set gap-extend penalty to -Y            [DEFAULT: -9.0]'
  id: ge
  inputBinding:
    prefix: -ge
  type: boolean
- doc: 'Output results to file                  [DEFAULT: off]'
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: 'Output fewer event notifications        [DEFAULT: off]'
  id: quiet
  inputBinding:
    prefix: -quiet
  type: boolean
- doc: 'Trim reference sequences to T nt        [DEFAULT: off]'
  id: trim
  inputBinding:
    prefix: -trim
  type: string
- doc: 'Do not perform thermodynamics           [DEFAULT: off]'
  id: no_energy
  inputBinding:
    prefix: -noenergy
  type: boolean
- doc: 'Restricts scans to those between specific miRNAs and UTRs provided in a pairwise
    tab-separated file                      [DEFAULT: off]'
  id: restrict
  inputBinding:
    prefix: -restrict
  type: File
- doc: Key value pairs ??                      [DEFAULT:]
  id: keyval
  inputBinding:
    prefix: -keyval
  type: boolean
