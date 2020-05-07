class: CommandLineTool
id: dEploid_dbg.cwl
inputs:
- id: de_plo_id
  doc: -vcf STR  --  VCF file path. -ref STR  --  File path of reference allele count.
    -alt STR  --  File path of alternative allele count.
  type: string
  inputBinding:
    prefix: --  DEploid
- id: file
  doc: of population level allele frequencies.
  type: string
  inputBinding:
    prefix: --  File
- id: file
  doc: of the reference panel.
  type: string
  inputBinding:
    prefix: --  File
- id: exclude
  doc: of sites to be excluded.
  type: string
  inputBinding:
    prefix: -exclude
- id: specify
  doc: file name prefix of the output.
  type: string
  inputBinding:
    prefix: --  Specify
- id: out
  doc: precision (default value 8).
  type: long
  inputBinding:
    prefix: --  Out
- id: number
  doc: strain (default value 5).
  type: long
  inputBinding:
    prefix: --  Number
- id: random
  doc: -nSample INT  --  Number of MCMC samples. -rate INT  --  MCMC sample rate.
    -noPanel  --  Use population level allele frequency as prior.
  type: long
  inputBinding:
    prefix: --  Random
- id: forbid_update_prop
  doc: moves to update proportions.
  type: string
  inputBinding:
    prefix: -forbidUpdateProp
- id: forbid_update_single
  doc: moves to update single haplotype.
  type: string
  inputBinding:
    prefix: -forbidUpdateSingle
- id: forbid_update_pair
  doc: moves to update pair haplotypes.
  type: string
  inputBinding:
    prefix: -forbidUpdatePair
- id: initial_p
  doc: '...  --  Initialize proportions.'
  type: string
  inputBinding:
    prefix: -initialP
outputs: []
cwlVersion: v1.1
baseCommand:
- dEploid_dbg
