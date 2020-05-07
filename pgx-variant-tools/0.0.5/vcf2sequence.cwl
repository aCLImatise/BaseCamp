class: CommandLineTool
id: vcf2sequence.cwl
inputs:
- id: vcf
  doc: Path to input VCF  [required]
  type: File
  inputBinding:
    prefix: --vcf
- id: sample
  doc: Sample to consider. If not given, take fist sample in VCF
  type: string
  inputBinding:
    prefix: --sample
- id: region
  doc: Region string of format chr:start-end
  type: string
  inputBinding:
    prefix: --region
- id: region_file
  doc: Path to BED file containing regions
  type: File
  inputBinding:
    prefix: --region-file
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2sequence
