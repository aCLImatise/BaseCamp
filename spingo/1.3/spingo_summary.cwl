#!/usr/bin/env cwl-runner

baseCommand:
- spingo_summary.py
class: CommandLineTool
cwlVersion: v1.0
id: spingo_summary.py
inputs:
- doc: Input file name
  id: results_file
  inputBinding:
    position: 0
  type: string
- doc: Level to summarize. Default=3 (species)
  id: level
  inputBinding:
    prefix: --level
  type: string
- doc: Similarity score threshold [0-1]. Default=0.5
  id: similarity
  inputBinding:
    prefix: --similarity
  type: string
- doc: bootstrap threshold cutoff [0-1]. Defualt=0.8
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: Display summary as a percentage instead of raw counts.
  id: percent
  inputBinding:
    prefix: --percent
  type: boolean
