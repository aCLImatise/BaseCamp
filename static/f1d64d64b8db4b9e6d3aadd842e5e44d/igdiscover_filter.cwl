class: CommandLineTool
id: igdiscover_filter.cwl
inputs:
- id: in_v_coverage
  doc: "Require that the sequence covers at least PERCENT of\nthe V gene. Default:\
    \ 90"
  type: long?
  inputBinding:
    prefix: --v-coverage
- id: in_v_evalue
  doc: "Require that the E-value for the V gene match is at\nmost EVALUE. Default:\
    \ 0.001"
  type: double?
  inputBinding:
    prefix: --v-evalue
- id: in_j_coverage
  doc: "Require that the sequence covers at least PERCENT of\nthe J gene. Default:\
    \ 60"
  type: long?
  inputBinding:
    prefix: --j-coverage
- id: in_json
  doc: Write statistics to FILE
  type: File?
  inputBinding:
    prefix: --json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- filter
