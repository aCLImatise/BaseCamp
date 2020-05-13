class: CommandLineTool
id: tarchive2amos.cwl
inputs:
- id: c
  doc: '- file containing clear ranges for the reads.  If this file is provided, any
    sequence that does not appear in it is excluded from the output.'
  type: string
  inputBinding:
    prefix: -c
- id: m
  doc: '- file containing mate-pair information as specified in the BAMBUS documentation.  This
    file replaces information provided in .xml files'
  type: string
  inputBinding:
    prefix: -m
- id: l
  doc: '- file containing mean/stdev information for libraries. Overrides .xml input.'
  type: string
  inputBinding:
    prefix: -l
- id: i
  doc: '- start numbering messages with id <id> (useful when appending to a bank)'
  type: string
  inputBinding:
    prefix: -i
- id: reads
  doc: than <minlen> are rejected (default 0)
  type: long
  inputBinding:
    prefix: '- reads'
- id: reads
  doc: than <maxlen> are rejected (default no limit)
  type: long
  inputBinding:
    prefix: '- reads'
- id: qual
  doc: '- default quality value assigned when no quality file is provided (default
    20)'
  type: string
  inputBinding:
    prefix: -qual
outputs: []
cwlVersion: v1.1
baseCommand:
- tarchive2amos
