#!/usr/bin/env cwl-runner

baseCommand:
- lociCounterWithLabels.py
class: CommandLineTool
cwlVersion: v1.0
id: locicounterwithlabels.py
inputs:
- doc: '.fa.fai file (default: None)'
  id: fai_file
  inputBinding:
    prefix: --fai-file
  type: string
- doc: '[BED_FILES [BED_FILES ...]], --bed-files [BED_FILES [BED_FILES ...]] BED files
    (default: None)'
  id: beds
  inputBinding:
    prefix: -beds
  type: boolean
- doc: 'BED file out (default: None)'
  id: bed_out
  inputBinding:
    prefix: --bed-out
  type: string
- doc: '[BED_LABELS [BED_LABELS ...]], --bed-labels [BED_LABELS [BED_LABELS ...]]
    Use these labels instead of bed file names (default: None)'
  id: labels
  inputBinding:
    prefix: -labels
  type: boolean
