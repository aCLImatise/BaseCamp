class: CommandLineTool
id: miranda.cwl
inputs:
- id: in_license
  doc: Display license information
  type: boolean
  inputBinding:
    prefix: --license
- id: in_sc
  doc: 'Set score threshold to S                [DEFAULT: 140.0]'
  type: double
  inputBinding:
    prefix: -sc
- id: in_en
  doc: 'Set energy threshold to -E kcal/mol     [DEFAULT: 1.0]'
  type: boolean
  inputBinding:
    prefix: -en
- id: in_scale
  doc: 'Set scaling parameter to Z              [DEFAULT: 4.0]'
  type: double
  inputBinding:
    prefix: -scale
- id: in_strict
  doc: "Demand strict 5' seed pairing           [DEFAULT: off]"
  type: boolean
  inputBinding:
    prefix: -strict
- id: in_go
  doc: 'Set gap-open penalty to -X              [DEFAULT: -4.0]'
  type: boolean
  inputBinding:
    prefix: -go
- id: in_ge
  doc: 'Set gap-extend penalty to -Y            [DEFAULT: -9.0]'
  type: boolean
  inputBinding:
    prefix: -ge
- id: in_out
  doc: 'Output results to file                  [DEFAULT: off]'
  type: File
  inputBinding:
    prefix: -out
- id: in_quiet
  doc: 'Output fewer event notifications        [DEFAULT: off]'
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_trim
  doc: 'Trim reference sequences to T nt        [DEFAULT: off]'
  type: string
  inputBinding:
    prefix: -trim
- id: in_no_energy
  doc: 'Do not perform thermodynamics           [DEFAULT: off]'
  type: boolean
  inputBinding:
    prefix: -noenergy
- id: in_restrict
  doc: "Restricts scans to those between\nspecific miRNAs and UTRs\nprovided in a\
    \ pairwise\ntab-separated file                      [DEFAULT: off]"
  type: File
  inputBinding:
    prefix: -restrict
- id: in_keyval
  doc: Key value pairs ??                      [DEFAULT:]
  type: boolean
  inputBinding:
    prefix: -keyval
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_options_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output results to file                  [DEFAULT: off]'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- miranda
