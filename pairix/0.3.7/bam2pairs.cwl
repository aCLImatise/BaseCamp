#!/usr/bin/env cwl-runner

baseCommand:
- bam2pairs
class: CommandLineTool
cwlVersion: v1.0
id: bam2pairs
inputs:
- doc: ": position is left-most position (default 5'end)."
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': chrom size file is provided to define mate ordering. (default alpha-numeric)'
  id: chrom_size
  inputBinding:
    prefix: --chromsize
  type: boolean
