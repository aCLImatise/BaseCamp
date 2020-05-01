#!/usr/bin/env cwl-runner

baseCommand:
- NormGeneCounts.py
class: CommandLineTool
cwlVersion: v1.0
id: normgenecounts.py
inputs:
- doc: input gene base frequencies
  id: gene_counts_file
  inputBinding:
    position: 0
  type: string
