class: CommandLineTool
id: ../../../splash_preparebed.cwl
inputs:
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: read_length
  doc: All UTRs short than the read length are removed.
  type: string
  inputBinding:
    prefix: --read-length
- id: output_dir
  doc: Output directory for mapped BAM files.
  type: string
  inputBinding:
    prefix: --outputDir
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- preparebed
