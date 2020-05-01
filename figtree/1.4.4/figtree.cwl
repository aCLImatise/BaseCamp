#!/usr/bin/env cwl-runner

baseCommand:
- figtree
class: CommandLineTool
cwlVersion: v1.0
id: figtree
inputs:
- doc: a graphic with the given format
  id: graphic
  inputBinding:
    prefix: -graphic
  type: string
- doc: width of the graphic in pixels
  id: width
  inputBinding:
    prefix: -width
  type: string
- doc: height of the graphic in pixels
  id: height
  inputBinding:
    prefix: -height
  type: string
- doc: input file is a URL
  id: url
  inputBinding:
    prefix: -url
  type: string
