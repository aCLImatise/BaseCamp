#!/usr/bin/env cwl-runner

baseCommand:
- pilconvert.py
class: CommandLineTool
cwlVersion: v1.0
id: pilconvert.py
inputs:
- doc: ''
  id: pil_convert
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: option
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: in_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: outfile
  inputBinding:
    position: 3
  type: string
- doc: convert to format (default is given by extension)
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: convert to greyscale
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: convert to palette image (using standard palette)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: convert to rgb
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: optimize output (trade speed for size)
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: set compression quality (0-100, JPEG only)
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: list supported file formats
  id: f
  inputBinding:
    prefix: -f
  type: boolean
