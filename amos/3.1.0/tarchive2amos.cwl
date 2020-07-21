class: CommandLineTool
id: ../../../tarchive2amos.cwl
inputs:
- id: file_containing_ranges
  doc: '- file containing clear ranges for the reads.  If this file is provided, any
    sequence that does not appear in it is excluded from the output.'
  type: string
  inputBinding:
    prefix: -c
- id: file_containing_matepair_information
  doc: '- file containing mate-pair information as specified in the BAMBUS documentation.  This
    file replaces information provided in .xml files'
  type: string
  inputBinding:
    prefix: -m
- id: file_containing_meanstdev_information
  doc: '- file containing mean/stdev information for libraries. Overrides .xml input.'
  type: string
  inputBinding:
    prefix: -l
- id: start_numbering_messages
  doc: '- start numbering messages with id <id> (useful when appending to a bank)'
  type: string
  inputBinding:
    prefix: -i
- id: min
  doc: '- reads shorter than <minlen> are rejected (default 0)'
  type: long
  inputBinding:
    prefix: -min
- id: max
  doc: '- reads longer than <maxlen> are rejected (default no limit)'
  type: long
  inputBinding:
    prefix: -max
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
