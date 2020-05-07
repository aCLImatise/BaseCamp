class: CommandLineTool
id: precheck.py.cwl
inputs:
- id: min_reads
  doc: 'The minimum number of reads required in each single- stranded family. Default:
    3'
  type: long
  inputBinding:
    prefix: --min-reads
- id: validate
  doc: "Check the id's of the reads to make sure the correct reads are mated into\
    \ pairs (the id's of mates must be identical). Default: False."
  type: boolean
  inputBinding:
    prefix: --validate
- id: no_check_ids
  doc: Don't check read ids.
  type: boolean
  inputBinding:
    prefix: --no-check-ids
outputs: []
cwlVersion: v1.1
baseCommand:
- precheck.py
