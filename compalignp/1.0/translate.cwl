class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/translate.cwl
inputs:
- id: translate_full_stops
  doc: ': translate in full, with stops; no individual ORFs'
  type: boolean
  inputBinding:
    prefix: -a
- id: report_only_orfs
  doc: ': report only ORFs greater than minlen (default 20)'
  type: long
  inputBinding:
    prefix: -l
- id: require_orfs_start
  doc: ': require ORFs to start with AUG/Met'
  type: boolean
  inputBinding:
    prefix: -m
- id: save_results_output
  doc: ': save results in output file'
  type: string
  inputBinding:
    prefix: -o
- id: quiet_silence_banner
  doc: ': quiet; silence banner, for piping or redirection'
  type: boolean
  inputBinding:
    prefix: -q
- id: set_stop_character
  doc: ': with -a, set stop character to <stopchar>'
  type: string
  inputBinding:
    prefix: -s
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- translate
