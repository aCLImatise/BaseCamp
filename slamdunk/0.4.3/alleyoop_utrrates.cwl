class: CommandLineTool
id: alleyoop_utrrates.cwl
inputs:
- id: bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: max_read_length
  doc: 'Max read length in BAM file (default: None)'
  type: long
  inputBinding:
    prefix: --max-read-length
outputs: []
cwlVersion: v1.1
baseCommand:
- alleyoop
- utrrates
