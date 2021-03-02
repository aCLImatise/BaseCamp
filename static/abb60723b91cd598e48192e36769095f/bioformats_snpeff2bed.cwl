class: CommandLineTool
id: bioformats_snpeff2bed.cwl
inputs:
- id: in_bed_three
  doc: convert to the BED3 format
  type: boolean?
  inputBinding:
    prefix: --bed3
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_vcf_file
  doc: an snpEff-annotated VCF file
  type: string
  inputBinding:
    position: 0
- id: in_bed_file
  doc: the output BED file of annotated variants
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bioformats
- snpeff2bed
