class: CommandLineTool
id: vcf2sequence.cwl
inputs:
- id: in_vcf
  doc: Path to input VCF  [required]
  type: File
  inputBinding:
    prefix: --vcf
- id: in_sample
  doc: "Sample to consider. If not given, take fist sample\nin VCF"
  type: string
  inputBinding:
    prefix: --sample
- id: in_region
  doc: Region string of format chr:start-end
  type: string
  inputBinding:
    prefix: --region
- id: in_region_file
  doc: Path to BED file containing regions
  type: File
  inputBinding:
    prefix: --region-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf2sequence
