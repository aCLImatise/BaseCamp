class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mapping.cwl
inputs:
- id: number_take_default
  doc: 'number of bases to take an alignment (default 20) '
  type: long
  inputBinding:
    prefix: -b
- id: fm_nine
  doc: 'fm9 file  '
  type: string
  inputBinding:
    prefix: -fm9
- id: fast_q
  doc: 'file is in a fastq format  '
  type: string
  inputBinding:
    prefix: -fastq
- id: list_two_exclude
  doc: with sequeces to exclude of the Aligment
  type: File
  inputBinding:
    prefix: -list2Exclude
- id: multi_fast_a
  doc: 'FILE  with all the reads '
  type: boolean
  inputBinding:
    prefix: -multiFasta
- id: nt
  doc: 'of threads to use (default 1) '
  type: string
  inputBinding:
    prefix: -nt
- id: offset_fm_nine
  doc: 'use several FM9 indexes (default 0) '
  type: string
  inputBinding:
    prefix: -offsetFM9
- id: output
  doc: for the output-file  if print option was selected (default output)
  type: string
  inputBinding:
    prefix: -output
- id: print
  doc: the result file (default false)
  type: string
  inputBinding:
    prefix: -print
- id: size
  doc: for the block aligment (default all dataset)
  type: long
  inputBinding:
    prefix: -size
- id: total_reads
  doc: of reads to exclude from list2Exclude
  type: string
  inputBinding:
    prefix: -totalReads
- id: offset_start_default
  doc: 'offset to start the alignemnt (default 0) '
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- mapping
