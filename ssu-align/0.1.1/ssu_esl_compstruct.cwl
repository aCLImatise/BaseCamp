class: CommandLineTool
id: ssu_esl_compstruct.cwl
inputs:
- id: m
  doc: ": use Mathews'relaxed criterion for correctness; allow +/-1 slip"
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: ': count pseudoknotted base pairs'
  type: boolean
  inputBinding:
    prefix: -p
- id: quiet
  doc: ': suppress verbose header'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-compstruct
