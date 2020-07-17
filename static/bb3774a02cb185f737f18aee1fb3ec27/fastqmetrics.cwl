class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastqmetrics.cwl
inputs:
- id: threads
  doc: Set the allowed number of threads to be used by the script. This only applies
    to bam and fastq format as data source
  type: string
  inputBinding:
    prefix: --threads
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: fast_q
  doc: Fastq file to extract features from.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqmetrics
