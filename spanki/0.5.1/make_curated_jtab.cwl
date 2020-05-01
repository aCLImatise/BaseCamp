#!/usr/bin/env cwl-runner

baseCommand:
- make_curated_jtab
class: CommandLineTool
cwlVersion: v1.0
id: make_curated_jtab
inputs:
- doc: BAM file name
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: "Curated junction list A table with >= 1 column, with column names It must\
    \ have a column named 'juncid' Any additional columns are carried over to the\
    \ new jtab "
  id: j_list
  inputBinding:
    prefix: -jlist
  type: string
- doc: junctiontab (jtab) From first pass analysis of the BAM file supplied
  id: j_tab
  inputBinding:
    prefix: -jtab
  type: string
- doc: Anchor size, default=8
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: Output directory, default='curated_juncs'
  id: o
  inputBinding:
    prefix: -o
  type: string
