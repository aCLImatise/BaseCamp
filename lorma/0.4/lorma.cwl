#!/usr/bin/env cwl-runner

baseCommand:
- lorma.sh
class: CommandLineTool
cwlVersion: v1.0
id: lorma.sh
inputs:
- doc: the sequence data of intermediate LoRDEC steps
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: LoRDEC steps
  id: n
  inputBinding:
    prefix: -n
  type: string
