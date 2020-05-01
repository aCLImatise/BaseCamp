#!/usr/bin/env cwl-runner

baseCommand:
- pan_genome_reorder_spreadsheet
class: CommandLineTool
cwlVersion: v1.0
id: pan_genome_reorder_spreadsheet
inputs:
- doc: tree filename []
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: output filename [reordered_spreadsheet.csv]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: tree format (newick/nexus/nhx/svggraph/tabtree/lintree) [newick]
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: input gene presence and absence spreadsheet [gene_presence_absence.csv]
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: search strategy (depth/breadth) [depth]
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: sorting method (height/creation/alpha/revalpha) [height]
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
