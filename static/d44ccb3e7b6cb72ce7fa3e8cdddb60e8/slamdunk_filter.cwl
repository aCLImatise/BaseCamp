class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/slamdunk_filter.cwl
inputs:
- id: output_dir
  doc: Output directory for mapped BAM files.
  type: string
  inputBinding:
    prefix: --outputDir
- id: bed
  doc: BED file, overrides MQ filter to 0
  type: string
  inputBinding:
    prefix: --bed
- id: min_mq
  doc: 'Minimum mapping quality (default: 2)'
  type: string
  inputBinding:
    prefix: --min-mq
- id: min_identity
  doc: 'Minimum alignment identity (default: 0.95)'
  type: string
  inputBinding:
    prefix: --min-identity
- id: max_nm
  doc: 'Maximum NM for alignments (default: -1)'
  type: string
  inputBinding:
    prefix: --max-nm
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- slamdunk
- filter
