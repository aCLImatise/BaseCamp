class: CommandLineTool
id: vcf_fix_ploidy.cwl
inputs:
- id: assumed_sex
  doc: M or F, required if the list is not complete in -s
  type: string
  inputBinding:
    prefix: --assumed-sex
- id: fix_likelihoods
  doc: Add or remove het likelihoods (not the default behaviour)
  type: boolean
  inputBinding:
    prefix: --fix-likelihoods
- id: ploidy
  doc: Ploidy definition. The default is shown below.
  type: File
  inputBinding:
    prefix: --ploidy
- id: samples
  doc: List of sample sexes (sample_name [MF]).
  type: File
  inputBinding:
    prefix: --samples
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-fix-ploidy
