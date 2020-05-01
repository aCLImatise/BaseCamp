#!/usr/bin/env cwl-runner

baseCommand:
- bigWigCat
class: CommandLineTool
cwlVersion: v1.0
id: bigwigcat
inputs:
- doc: data points bundled at lowest level. Default 1024
  id: items_per_slot
  inputBinding:
    prefix: -itemsPerSlot
  type: string
