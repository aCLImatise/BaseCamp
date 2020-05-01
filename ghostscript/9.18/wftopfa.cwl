#!/usr/bin/env cwl-runner

baseCommand:
- wftopfa
class: CommandLineTool
cwlVersion: v1.0
id: wftopfa
inputs:
- doc: :1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:80/200(L)--   --dict:26/100(L)--
  id: dict
  inputBinding:
    prefix: --dict
  type: boolean
