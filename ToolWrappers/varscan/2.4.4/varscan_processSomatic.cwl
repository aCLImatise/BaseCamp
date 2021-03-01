class: CommandLineTool
id: varscan_processSomatic.cwl
inputs:
- id: in_max_normal_freq
  doc: '- Maximum variant allele frequency in normal [0.05]'
  type: boolean?
  inputBinding:
    prefix: --max-normal-freq
- id: in_p_value
  doc: '- P-value for high-confidence calling [0.07]'
  type: boolean?
  inputBinding:
    prefix: --p-value
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_options
  doc: --min-tumor-freq - Minimum variant allele frequency in tumor [0.10]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- varscan
- processSomatic
