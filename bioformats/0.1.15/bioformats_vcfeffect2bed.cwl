class: CommandLineTool
id: bioformats_vcfeffect2bed.cwl
inputs:
- id: vcf_file
  doc: an snpEff-annotated VCF file
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: the output BED3+ file of sample effects
  type: string
  inputBinding:
    position: 1
- id: g
  doc: '[{REFHET,COMHET,ALTHOM} ...], --genotypes {REFHET,COMHET,ALTHOM} [{REFHET,COMHET,ALTHOM}
    ...]'
  type: string
  inputBinding:
    prefix: -g
- id: ignore_errors
  doc: ignore errors in an input file
  type: boolean
  inputBinding:
    prefix: --ignore_errors
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- vcfeffect2bed
