#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge-sort-nt.pl
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge-sort-nt.pl
inputs:
- doc: Output mappings that are present in sequence file to file str
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Output ACs w/o mapping to file str
  id: a
  inputBinding:
    prefix: -a
  type: string
