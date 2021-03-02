class: CommandLineTool
id: translate.cwl
inputs:
- id: in_translate_individual_orfs
  doc: ': translate in full, with stops; no individual ORFs'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_report_orfs_greater
  doc: ': report only ORFs greater than minlen (default 20)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_require_orfs_start
  doc: ': require ORFs to start with AUG/Met'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_save_results_output
  doc: ': save results in output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_quiet_silence_banner
  doc: ': quiet; silence banner, for piping or redirection'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_set_stop_character
  doc: ': with -a, set stop character to <stopchar>'
  type: string?
  inputBinding:
    prefix: -s
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_results_output
  doc: ': save results in output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_save_results_output)
hints: []
cwlVersion: v1.1
baseCommand:
- translate
