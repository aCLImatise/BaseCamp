class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam2mr.cwl
inputs:
- id: output
  doc: 'Name of output file '
  type: boolean
  inputBinding:
    prefix: -output
- id: suff
  doc: 'read name suffix length (default: 0) '
  type: boolean
  inputBinding:
    prefix: -suff
- id: seg_len
  doc: 'maximum allowed insert size '
  type: boolean
  inputBinding:
    prefix: -seg_len
- id: max_reads
  doc: 'maximum number of reads to hold for merging '
  type: boolean
  inputBinding:
    prefix: -max_reads
- id: verbose
  doc: 'print more information '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2mr
