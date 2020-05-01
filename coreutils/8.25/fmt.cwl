#!/usr/bin/env cwl-runner

baseCommand:
- fmt
class: CommandLineTool
cwlVersion: v1.0
id: fmt
inputs:
- doc: indentation of first two lines
  id: crown_margin
  inputBinding:
    prefix: --crown-margin
  type: string
- doc: reformat only lines beginning with STRING, reattaching the prefix to reformatted
    lines
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: long lines, but do not refill
  id: split_only
  inputBinding:
    prefix: --split-only
  type: string
- doc: indentation of first line different from second
  id: tagged_paragraph
  inputBinding:
    prefix: --tagged-paragraph
  type: boolean
- doc: one space between words, two after sentences
  id: uniform_spacing
  inputBinding:
    prefix: --uniform-spacing
  type: boolean
- doc: maximum line width (default of 75 columns)
  id: width
  inputBinding:
    prefix: --width
  type: string
- doc: goal width (default of 93% of width)
  id: goal
  inputBinding:
    prefix: --goal
  type: string
