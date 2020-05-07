class: CommandLineTool
id: KmerStream.cwl
inputs:
- id: binary
  doc: Output is written in binary format (default false)
  type: boolean
  inputBinding:
    prefix: --binary
- id: tsv
  doc: Output is written in TSV format (default false)
  type: boolean
  inputBinding:
    prefix: --tsv
- id: verbose
  doc: Print lots of messages during run
  type: boolean
  inputBinding:
    prefix: --verbose
- id: online
  doc: Prints out estimates every 100K reads
  type: boolean
  inputBinding:
    prefix: --online
- id: q64
  doc: set if PHRED+64 scores are used (@...h) default used PHRED+33
  type: boolean
  inputBinding:
    prefix: --q64
outputs: []
cwlVersion: v1.1
baseCommand:
- KmerStream
