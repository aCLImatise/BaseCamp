class: CommandLineTool
id: ../../../ssu_esl_compstruct.cwl
inputs:
- id: in_use_mathewsrelaxed_criterion
  doc: ": use Mathews'relaxed criterion for correctness; allow +/-1 slip"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_count_pseudoknotted_pairs
  doc: ': count pseudoknotted base pairs'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_quiet
  doc: ': suppress verbose header'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-esl-compstruct
