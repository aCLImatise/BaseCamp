class: CommandLineTool
id: genFm9.cwl
inputs:
- id: fast_q
  doc: 'file is in a fastq format  '
  type: string
  inputBinding:
    prefix: -fastq
- id: multi_fast_a
  doc: 'FILE  with all the reads '
  type: boolean
  inputBinding:
    prefix: -multiFasta
- id: output
  doc: for the output-file  if print option was selected (default output)
  type: string
  inputBinding:
    prefix: -output
- id: size
  doc: of reads to generate the FM9 (default all dataset)
  type: string
  inputBinding:
    prefix: -size
outputs: []
cwlVersion: v1.1
baseCommand:
- genFm9
