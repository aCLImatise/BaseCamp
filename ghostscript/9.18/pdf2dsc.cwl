#!/usr/bin/env cwl-runner

baseCommand:
- pdf2dsc
class: CommandLineTool
cwlVersion: v1.0
id: pdf2dsc
inputs:
- doc: ()   (r)
  id: pdf_file
  inputBinding:
    position: 0
  type: string
- doc: :1193/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--
  id: dict
  inputBinding:
    prefix: --dict
  type: boolean
