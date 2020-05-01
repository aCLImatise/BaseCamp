#!/usr/bin/env cwl-runner

baseCommand:
- subread-buildindex
class: CommandLineTool
cwlVersion: v1.0
id: subread-buildindex
inputs:
- doc: base name of the index to be created
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: build a full index for the reference genome. 16bp subreads will be extracted
    from every position of the reference genome. Size of the index is typically 3
    times the size of index built from using the default setting.
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: create one block of index. The built index will not be split into multiple
    pieces. This makes the largest amount of memory be requested when running alignments,
    but it enables the maximum mapping speed to be achieved. This option overrides
    -M when it is provided as well.
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: size of requested memory(RAM) in megabytes, 8000 by default.
  id: m
  inputBinding:
    prefix: -M
  type: long
- doc: specify the threshold for removing uninformative subreads (highly repetitive
    16mers in the reference). 100 by default.
  id: f
  inputBinding:
    prefix: -f
  type: long
- doc: build a color-space index.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: output version of the program.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
