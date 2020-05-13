class: CommandLineTool
id: bioformats_snpeff2bed.cwl
inputs:
- id: vcf_file
  doc: an snpEff-annotated VCF file
  type: string
  inputBinding:
    position: 0
- id: bed_file
  doc: the output BED file of annotated variants
  type: string
  inputBinding:
    position: 1
- id: bed3
  doc: convert to the BED3 format
  type: boolean
  inputBinding:
    prefix: --bed3
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- snpeff2bed
