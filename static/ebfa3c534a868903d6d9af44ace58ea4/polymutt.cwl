class: CommandLineTool
id: polymutt.cwl
inputs:
- id: rate_de_novo
  doc: '[1.5e-08],'
  type: boolean
  inputBinding:
    prefix: --rate_denovo
- id: ts_tv_de_novo
  doc: '[2.00], --minLLR_denovo [-3.0e+00]'
  type: boolean
  inputBinding:
    prefix: --tstv_denovo
- id: min_perc_sample_with_data
  doc: '[0.00]'
  type: boolean
  inputBinding:
    prefix: --minPercSampleWithData
outputs: []
cwlVersion: v1.1
baseCommand:
- polymutt
