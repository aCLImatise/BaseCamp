class: CommandLineTool
id: ../../../dEploid_dbg.cwl
inputs:
- id: version
  doc: --  DEploid version.
  type: string
  inputBinding:
    prefix: -version
- id: vcf
  doc: --  VCF file path.
  type: string
  inputBinding:
    prefix: -vcf
- id: ref
  doc: --  File path of reference allele count.
  type: string
  inputBinding:
    prefix: -ref
- id: alt
  doc: --  File path of alternative allele count.
  type: string
  inputBinding:
    prefix: -alt
- id: plaf
  doc: --  File path of population level allele frequencies.
  type: string
  inputBinding:
    prefix: -plaf
- id: panel
  doc: --  File path of the reference panel.
  type: string
  inputBinding:
    prefix: -panel
- id: exclude
  doc: --  File path of sites to be excluded.
  type: string
  inputBinding:
    prefix: -exclude
- id: _specify_prefix
  doc: --  Specify the file name prefix of the output.
  type: string
  inputBinding:
    prefix: -o
- id: _out_put
  doc: --  Out put precision (default value 8).
  type: long
  inputBinding:
    prefix: -p
- id: _number_strain
  doc: --  Number of strain (default value 5).
  type: long
  inputBinding:
    prefix: -k
- id: seed
  doc: --  Random seed.
  type: long
  inputBinding:
    prefix: -seed
- id: n_sample
  doc: --  Number of MCMC samples.
  type: long
  inputBinding:
    prefix: -nSample
- id: rate
  doc: --  MCMC sample rate.
  type: long
  inputBinding:
    prefix: -rate
- id: no_panel
  doc: --  Use population level allele frequency as prior.
  type: boolean
  inputBinding:
    prefix: -noPanel
- id: forbid_update_prop
  doc: --  Forbid MCMC moves to update proportions.
  type: boolean
  inputBinding:
    prefix: -forbidUpdateProp
- id: forbid_update_single
  doc: --  Forbid MCMC moves to update single haplotype.
  type: boolean
  inputBinding:
    prefix: -forbidUpdateSingle
- id: forbid_update_pair
  doc: --  Forbid MCMC moves to update pair haplotypes.
  type: boolean
  inputBinding:
    prefix: -forbidUpdatePair
- id: initial_p
  doc: '...  --  Initialize proportions.'
  type: string
  inputBinding:
    prefix: -initialP
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- dEploid_dbg
