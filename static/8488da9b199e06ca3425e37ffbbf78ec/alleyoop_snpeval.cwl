class: CommandLineTool
id: alleyoop_snpeval.cwl
inputs:
- id: bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
- id: max_read_length
  doc: 'Max read length in BAM file (default: None)'
  type: long
  inputBinding:
    prefix: --max-read-length
- id: min_base_qual
  doc: 'Min base quality for T -> C conversions (default: 27)'
  type: long
  inputBinding:
    prefix: --min-base-qual
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- alleyoop
- snpeval
