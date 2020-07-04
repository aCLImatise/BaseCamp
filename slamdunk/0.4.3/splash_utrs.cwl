class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splash_utrs.cwl
inputs:
- id: reference
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --reference
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: read_length
  doc: Read length
  type: string
  inputBinding:
    prefix: --read-length
- id: output_dir
  doc: Output directory for mapped BAM files.
  type: string
  inputBinding:
    prefix: --outputDir
- id: snp_rate
  doc: SNP rate in UTRs
  type: string
  inputBinding:
    prefix: --snp-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- utrs
