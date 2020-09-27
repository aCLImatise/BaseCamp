class: CommandLineTool
id: bioformats_vcfeffect2bed.cwl
inputs:
- id: in_impacts_effects_reported
  doc: "[{HIGH,MODERATE,LOW,MODIFIER} ...], --impacts {HIGH,MODERATE,LOW,MODIFIER}\
    \ [{HIGH,MODERATE,LOW,MODIFIER} ...]\nimpacts of effects to be reported"
  type: string
  inputBinding:
    prefix: -i
- id: in_g
  doc: '[{REFHET,COMHET,ALTHOM} ...], --genotypes {REFHET,COMHET,ALTHOM} [{REFHET,COMHET,ALTHOM}
    ...]'
  type: string
  inputBinding:
    prefix: -g
- id: in_ignore_errors
  doc: ignore errors in an input file
  type: boolean
  inputBinding:
    prefix: --ignore_errors
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_vcf_file
  doc: an snpEff-annotated VCF file
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: the output BED3+ file of sample effects
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioformats
- vcfeffect2bed
