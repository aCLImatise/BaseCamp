#!/usr/bin/env cwl-runner

baseCommand:
- extractDEs
class: CommandLineTool
cwlVersion: v1.0
id: extractdes
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: mapped_reads
  inputBinding:
    position: 1
  type: string
- doc: 'Write output to this file (STDOUT if omitted). '
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: 'the genomic regions, in BED format, corresponding to the input  sequences
    for Zagros. '
  id: regions
  inputBinding:
    prefix: -regions
  type: boolean
- doc: 'the mapper used to map the reads (Default: rmap) '
  id: mapper
  inputBinding:
    prefix: -mapper
  type: boolean
- doc: 'the technology type used in the experiment (default iCLIP) '
  id: tech
  inputBinding:
    prefix: -tech
  type: boolean
- doc: 'print more run info (default: false '
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
