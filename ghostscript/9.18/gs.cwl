#!/usr/bin/env cwl-runner

baseCommand:
- gs
class: CommandLineTool
cwlVersion: v1.0
id: gs
inputs:
- doc: no pause after page   | -q       `quiet', fewer messages
  id: d_no_pause
  inputBinding:
    prefix: -dNOPAUSE
  type: boolean
- doc: <width>x<height>  page size in pixels   | -r<res>  pixels/inch resolution
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: select device         | -dBATCH  exit after last file
  id: s_device
  inputBinding:
    prefix: -sDEVICE
  type: string
- doc: 'select output file: - for stdout, |command for pipe, embed %d or %ld for page
    #'
  id: soutputfile
  inputBinding:
    prefix: -sOutputFile
  type: File
