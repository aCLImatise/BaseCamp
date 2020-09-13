class: CommandLineTool
id: ../../../polymutt.cwl
inputs:
- id: in_rate_de_novo
  doc: '[1.5e-08],'
  type: boolean
  inputBinding:
    prefix: --rate_denovo
- id: in_ts_tv_de_novo
  doc: '[2.00], --minLLR_denovo [-3.0e+00]'
  type: boolean
  inputBinding:
    prefix: --tstv_denovo
- id: in_min_perc_sample_with_data
  doc: '[0.00]'
  type: boolean
  inputBinding:
    prefix: --minPercSampleWithData
- id: in_out_vcf
  doc: '[], --pos [], --all_sites, --gl_off,'
  type: boolean
  inputBinding:
    prefix: --out_vcf
- id: in_quick_call
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quick_call
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- polymutt
