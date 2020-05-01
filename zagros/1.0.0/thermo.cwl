#!/usr/bin/env cwl-runner

baseCommand:
- thermo
class: CommandLineTool
cwlVersion: v1.0
id: thermo
inputs:
- doc: 'output file name (default: stdout) '
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
