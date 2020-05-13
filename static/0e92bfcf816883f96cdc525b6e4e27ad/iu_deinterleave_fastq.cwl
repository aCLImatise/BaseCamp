class: CommandLineTool
id: iu_deinterleave_fastq.cwl
inputs:
- id: input
  doc: FASTQ file to be de-interleaved
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-deinterleave-fastq
