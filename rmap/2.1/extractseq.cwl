#!/usr/bin/env cwl-runner

baseCommand:
- extractseq
class: CommandLineTool
cwlVersion: v1.0
id: extractseq
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bed_format_regions
  inputBinding:
    position: 1
  type: string
- doc: 'Name of output file (default: stdout) '
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: 'directory with chrom files (FASTA format) '
  id: chrom
  inputBinding:
    prefix: -chrom
  type: boolean
- doc: 'print more run info '
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
