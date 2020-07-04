class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/miranda.cwl
inputs:
- id: license
  doc: Display license information
  type: boolean
  inputBinding:
    prefix: --license
- id: sc
  doc: 'Set score threshold to S                [DEFAULT: 140.0]'
  type: string
  inputBinding:
    prefix: -sc
- id: en
  doc: 'Set energy threshold to -E kcal/mol     [DEFAULT: 1.0]'
  type: boolean
  inputBinding:
    prefix: -en
- id: scale
  doc: 'Set scaling parameter to Z              [DEFAULT: 4.0]'
  type: string
  inputBinding:
    prefix: -scale
- id: strict
  doc: "Demand strict 5' seed pairing           [DEFAULT: off]"
  type: boolean
  inputBinding:
    prefix: -strict
- id: go
  doc: 'Set gap-open penalty to -X              [DEFAULT: -4.0]'
  type: boolean
  inputBinding:
    prefix: -go
- id: ge
  doc: 'Set gap-extend penalty to -Y            [DEFAULT: -9.0]'
  type: boolean
  inputBinding:
    prefix: -ge
- id: out
  doc: 'Output results to file                  [DEFAULT: off]'
  type: File
  inputBinding:
    prefix: -out
- id: quiet
  doc: 'Output fewer event notifications        [DEFAULT: off]'
  type: boolean
  inputBinding:
    prefix: -quiet
- id: trim
  doc: 'Trim reference sequences to T nt        [DEFAULT: off]'
  type: string
  inputBinding:
    prefix: -trim
- id: no_energy
  doc: 'Do not perform thermodynamics           [DEFAULT: off]'
  type: boolean
  inputBinding:
    prefix: -noenergy
- id: restrict
  doc: 'Restricts scans to those between specific miRNAs and UTRs provided in a pairwise
    tab-separated file                      [DEFAULT: off]'
  type: File
  inputBinding:
    prefix: -restrict
- id: keyval
  doc: Key value pairs ??                      [DEFAULT:]
  type: boolean
  inputBinding:
    prefix: -keyval
- id: file_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: options_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- miranda
