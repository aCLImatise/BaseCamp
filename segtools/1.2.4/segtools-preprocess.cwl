#!/usr/bin/env cwl-runner

baseCommand:
- segtools-preprocess
class: CommandLineTool
cwlVersion: v1.0
id: segtools-preprocess
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: outfile
  inputBinding:
    position: 2
  type: string
- doc: Overwrite any existing output files.
  id: clobber
  inputBinding:
    prefix: --clobber
  type: boolean
- doc: Do not print diagnostic messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Read INFILE as an annotation, rather than as a segmentation (default).
  id: annotation
  inputBinding:
    prefix: --annotation
  type: boolean
