class: CommandLineTool
id: RADpainter_hapsFromVCF.cwl
inputs:
- id: in_het_treatment
  doc: 'r: assign het bases randomly (default); p: use the phase information in the
    VCF'
  type: string?
  inputBinding:
    prefix: --het-treatment
- id: in_minimum_acceptable_inbreeding
  doc: 'minimum acceptable inbreeding coefficient (default: F >= -0.3)'
  type: double?
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
hints: []
cwlVersion: v1.1
baseCommand:
- RADpainter
- hapsFromVCF
