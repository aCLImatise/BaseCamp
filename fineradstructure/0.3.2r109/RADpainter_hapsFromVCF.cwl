class: CommandLineTool
id: RADpainter_hapsFromVCF.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: h
  doc: ',   --het-treatment <r|p>             r: assign het bases randomly (default);
    p: use the phase information in the VCF'
  type: boolean
  inputBinding:
    prefix: -H
- id: f
  doc: 'minimum acceptable inbreeding coefficient (default: F >= -0.3)'
  type: long
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- RADpainter
- hapsFromVCF
