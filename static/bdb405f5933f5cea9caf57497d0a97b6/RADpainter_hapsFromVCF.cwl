class: CommandLineTool
id: RADpainter_hapsFromVCF.cwl
inputs:
- id: in__rp_r
  doc: ',   --het-treatment <r|p>             r: assign het bases randomly (default);
    p: use the phase information in the VCF'
  type: boolean
  inputBinding:
    prefix: -H
- id: in_minimum_acceptable_inbreeding
  doc: 'minimum acceptable inbreeding coefficient (default: F >= -0.3)'
  type: double
  inputBinding:
    prefix: -F
- id: in_input_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RADpainter
- hapsFromVCF
