class: CommandLineTool
id: igdiscover_filter.cwl
inputs:
- id: v_coverage
  doc: 'Require that the sequence covers at least PERCENT of the V gene. Default:
    90'
  type: string
  inputBinding:
    prefix: --v-coverage
- id: v_evalue
  doc: 'Require that the E-value for the V gene match is at most EVALUE. Default:
    0.001'
  type: string
  inputBinding:
    prefix: --v-evalue
- id: j_coverage
  doc: 'Require that the sequence covers at least PERCENT of the J gene. Default:
    60'
  type: string
  inputBinding:
    prefix: --j-coverage
- id: json
  doc: Write statistics to FILE
  type: File
  inputBinding:
    prefix: --json
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- filter
