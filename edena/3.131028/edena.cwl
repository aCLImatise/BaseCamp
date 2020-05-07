class: CommandLineTool
id: edena.cwl
inputs:
- id: truncate
  doc: Truncate the 3' end of the reads TO the specified length
  type: long
  inputBinding:
    prefix: -truncate
- id: dead_ends
  doc: Maximum length for dead-end paths removal. Default value is set to 2*readLength-1.
  type: long
  inputBinding:
    prefix: -deadEnds
- id: discard_non_usable
  doc: '<yes/no>   Reads that are involved in orphan nodes smaller than 1.5*readLength
    are considered as "non-usable". This filter discards such nodes. Default: enabled'
  type: boolean
  inputBinding:
    prefix: -discardNonUsable
- id: trim
  doc: 'Coverage cutoff for contigs ends: Contig ends ending in a gap may contain
    errors due to low coverage. This option trim a few bases from these ends until
    a minimum coverage is reached. Default is 4. Ends are not trimmed if set to 1.'
  type: long
  inputBinding:
    prefix: -trim
- id: shell
  doc: Interactive shell. Allows querying the assembly graph.
  type: boolean
  inputBinding:
    prefix: -shell
outputs: []
cwlVersion: v1.1
baseCommand:
- edena
