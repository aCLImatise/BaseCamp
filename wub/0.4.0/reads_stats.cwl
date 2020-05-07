class: CommandLineTool
id: reads_stats.py.cwl
inputs:
- id: fast_x
  doc: input file fastq or fasta
  type: File
  inputBinding:
    prefix: --fastx
- id: raw
  doc: save raw the gc content per read/contig. default[False]
  type: boolean
  inputBinding:
    prefix: --raw
- id: savepath
  doc: output dir. default[cwd]
  type: string
  inputBinding:
    prefix: --savepath
- id: report
  doc: Report PDF default[False]
  type: boolean
  inputBinding:
    prefix: --report
- id: tag
  doc: output name or tag. default[input name]
  type: string
  inputBinding:
    prefix: --tag
outputs: []
cwlVersion: v1.1
baseCommand:
- reads_stats.py
