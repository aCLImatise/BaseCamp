#!/usr/bin/env cwl-runner

baseCommand:
- nucBed
class: CommandLineTool
cwlVersion: v1.0
id: nucbed
inputs:
- doc: Input FASTA file
  id: fi
  inputBinding:
    prefix: -fi
  type: boolean
- doc: BED/GFF/VCF file of ranges to extract from -fi
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: Profile the sequence according to strand.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Print the extracted sequence
  id: seq
  inputBinding:
    prefix: -seq
  type: boolean
- doc: Report the number of times a user-defined sequence is observed (case-sensitive).
  id: pattern
  inputBinding:
    prefix: -pattern
  type: boolean
- doc: Ignore case when matching -pattern. By defaulty, case matters.
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: Use full fasta header.
  id: full_header
  inputBinding:
    prefix: -fullHeader
  type: boolean
- doc: ', only the word before the first space or tab is used.'
  id: by
  inputBinding:
    prefix: '- By'
  type: string
