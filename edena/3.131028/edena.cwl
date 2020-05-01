#!/usr/bin/env cwl-runner

baseCommand:
- edena
class: CommandLineTool
cwlVersion: v1.0
id: edena
inputs:
- doc: Truncate the 3' end of the reads TO the specified length
  id: truncate
  inputBinding:
    prefix: -truncate
  type: long
- doc: Maximum length for dead-end paths removal. Default value is set to 2*readLength-1.
  id: dead_ends
  inputBinding:
    prefix: -deadEnds
  type: long
- doc: '<yes/no>   Reads that are involved in orphan nodes smaller than 1.5*readLength
    are considered as "non-usable". This filter discards such nodes. Default: enabled'
  id: discard_non_usable
  inputBinding:
    prefix: -discardNonUsable
  type: boolean
- doc: 'Coverage cutoff for contigs ends: Contig ends ending in a gap may contain
    errors due to low coverage. This option trim a few bases from these ends until
    a minimum coverage is reached. Default is 4. Ends are not trimmed if set to 1.'
  id: trim
  inputBinding:
    prefix: -trim
  type: long
- doc: Interactive shell. Allows querying the assembly graph.
  id: shell
  inputBinding:
    prefix: -shell
  type: boolean
