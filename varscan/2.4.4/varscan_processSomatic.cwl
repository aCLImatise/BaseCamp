class: CommandLineTool
id: varscan_processSomatic.cwl
inputs:
- id: min_tumor_freq
  doc: allele frequency in tumor [0.10]
  type: string
  inputBinding:
    prefix: --min-tumor-freq
- id: max_normal_freq
  doc: allele frequency in normal [0.05]
  type: string
  inputBinding:
    prefix: --max-normal-freq
- id: p_value
  doc: high-confidence calling [0.07]
  type: string
  inputBinding:
    prefix: --p-value
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- processSomatic
