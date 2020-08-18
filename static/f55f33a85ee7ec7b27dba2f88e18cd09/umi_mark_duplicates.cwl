class: CommandLineTool
id: ../../../umi_mark_duplicates.cwl
inputs:
- id: file
  doc: the input bam file
  type: File
  inputBinding:
    prefix: --file
- id: processes
  doc: number of processes
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: turn on debug mode
  type: boolean
  inputBinding:
    prefix: --debug
- id: count
  doc: Count the number of raw reads for each locus (determined by pairs)
  type: boolean
  inputBinding:
    prefix: --count
outputs: []
cwlVersion: v1.1
baseCommand:
- umi_mark_duplicates
