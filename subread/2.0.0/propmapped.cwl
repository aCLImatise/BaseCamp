#!/usr/bin/env cwl-runner

baseCommand:
- propmapped
class: CommandLineTool
cwlVersion: v1.0
id: propmapped
inputs:
- doc: An input file containing read mapping results. Both SAM or BAM formats are
    supported.
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: Name of output file including mapping statistics.
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: If specified, fragments (read pairs) will be counted instead of individual
    reads. This option is only applicable for paired-end reads.
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: If specified, only properly paired reads will be counted. This option is only
    applicable for paired-end reads.
  id: p
  inputBinding:
    prefix: -p
  type: boolean
