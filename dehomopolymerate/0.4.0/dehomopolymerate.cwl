#!/usr/bin/env cwl-runner

baseCommand:
- dehomopolymerate
class: CommandLineTool
cwlVersion: v1.0
id: dehomopolymerate
inputs:
- doc: Print version and exit
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Quiet mode; not non-error output
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: Output FASTA not FASTQ
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Output RAW one line per sequence
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: Discard output sequences shorter then L bp
  id: l
  inputBinding:
    prefix: -l
  type: string
