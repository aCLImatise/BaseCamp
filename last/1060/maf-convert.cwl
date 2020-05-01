#!/usr/bin/env cwl-runner

baseCommand:
- maf-convert
class: CommandLineTool
cwlVersion: v1.0
id: maf-convert
inputs:
- doc: assume protein alignments, for psl match counts
  id: protein
  inputBinding:
    prefix: --protein
  type: boolean
- doc: join co-linear alignments separated by <= N letters
  id: join
  inputBinding:
    prefix: --join
  type: string
- doc: omit any header lines from the output
  id: noheader
  inputBinding:
    prefix: --noheader
  type: boolean
- doc: include dictionary of sequence lengths in sam format
  id: dictionary
  inputBinding:
    prefix: --dictionary
  type: boolean
- doc: get sequence dictionary from DICTFILE
  id: dict_file
  inputBinding:
    prefix: --dictfile
  type: string
- doc: read group info for sam format
  id: read_group
  inputBinding:
    prefix: --readgroup
  type: string
- doc: 'line length for blast and html formats (default: 60)'
  id: line_size
  inputBinding:
    prefix: --linesize
  type: string
