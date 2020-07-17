class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/coverage_from_bam.cwl
inputs:
- id: regions
  doc: 'Only process given regions. (default: None)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: prefix
  doc: 'Prefix for output, defaults to basename of bam. (default: None)'
  type: string
  inputBinding:
    prefix: --prefix
- id: stride
  doc: 'Stride in genomic coordinate. (default: 1000)'
  type: string
  inputBinding:
    prefix: --stride
- id: summary_only
  doc: 'Output only the depth_summary.txt file (default: False)'
  type: boolean
  inputBinding:
    prefix: --summary_only
- id: bam
  doc: .fasta/fastq file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- coverage_from_bam
