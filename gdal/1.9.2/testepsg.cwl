#!/usr/bin/env cwl-runner

baseCommand:
- testepsg
class: CommandLineTool
cwlVersion: v1.0
id: testepsg
inputs:
- doc: ': transform a coordinate from source GCS/PCS to target GCS/PCS'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
