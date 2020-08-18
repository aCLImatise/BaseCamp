class: CommandLineTool
id: ../../../ASCIIGenome.cwl
inputs:
- id: batch_file
  doc: ''
  type: string
  inputBinding:
    prefix: --batchFile
- id: region
  doc: ''
  type: string
  inputBinding:
    prefix: --region
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
- id: exec
  doc: ''
  type: string
  inputBinding:
    prefix: --exec
- id: no_format
  doc: ''
  type: boolean
  inputBinding:
    prefix: --noFormat
- id: noninteractive
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nonInteractive
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: show_mem
  doc: ''
  type: boolean
  inputBinding:
    prefix: --showMem
- id: showtime
  doc: ''
  type: boolean
  inputBinding:
    prefix: --showTime
- id: debug
  doc: ''
  type: string
  inputBinding:
    prefix: --debug
- id: input
  doc: 'Input files to be displayed: bam, bed, gtf, bigwig, bedgraph, etc'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ASCIIGenome
