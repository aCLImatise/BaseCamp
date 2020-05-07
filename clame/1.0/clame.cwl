class: CommandLineTool
id: clame.cwl
inputs:
- id: b
  doc: 'number of bases to take an alignment (default 70) '
  type: long
  inputBinding:
    prefix: -b
- id: fm9
  doc: 'fm9 file  '
  type: string
  inputBinding:
    prefix: -fm9
- id: fast_q
  doc: 'file is in a fastq format  '
  type: string
  inputBinding:
    prefix: -fastq
- id: e
  doc: 'of cut points (comma separator) for edges constrains (default 0,10000) '
  type: string
  inputBinding:
    prefix: -e
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
- id: output
  doc: for the output-file  if print option was selected (default output)
  type: string
  inputBinding:
    prefix: -output
- id: print
  doc: 'print output to file (default false) '
  type: string
  inputBinding:
    prefix: -print
- id: size_bin
  doc: 'number of reads to report a bin (default 1000) '
  type: long
  inputBinding:
    prefix: -sizeBin
outputs: []
cwlVersion: v1.1
baseCommand:
- clame
