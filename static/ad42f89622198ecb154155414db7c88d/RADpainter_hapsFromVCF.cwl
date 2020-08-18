class: CommandLineTool
id: ../../../RADpainter_hapsFromVCF.cwl
inputs:
- id: _hettreatment_rp
  doc: ',   --het-treatment <r|p>             r: assign het bases randomly (default);
    p: use the phase information in the VCF'
  type: boolean
  inputBinding:
    prefix: -H
- id: minimum_acceptable_inbreeding
  doc: 'minimum acceptable inbreeding coefficient (default: F >= -0.3)'
  type: long
  inputBinding:
    prefix: -F
- id: input_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RADpainter
- hapsFromVCF
