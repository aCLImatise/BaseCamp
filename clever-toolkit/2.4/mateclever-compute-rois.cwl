#!/usr/bin/env cwl-runner

baseCommand:
- mateclever-compute-rois
class: CommandLineTool
cwlVersion: v1.0
id: mateclever-compute-rois
inputs:
- doc: 'Distance from deletion breakpoints to be included (default: 750).'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: 'Maximum deletion length to be considered (default: none).'
  id: m
  inputBinding:
    prefix: -m
  type: long
