class: CommandLineTool
id: fastqmetrics.cwl
inputs:
- id: in_threads
  doc: "Set the allowed number of threads to be used by the\nscript. This only applies\
    \ to bam and fastq format as\ndata source\n"
  type: long
  inputBinding:
    prefix: --threads
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_fast_q
  doc: Fastq file to extract features from.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastqmetrics
