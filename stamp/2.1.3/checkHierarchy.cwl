#!/usr/bin/env cwl-runner

baseCommand:
- checkHierarchy.py
class: CommandLineTool
cwlVersion: v1.0
id: checkhierarchy.py
inputs:
- doc: STAMP profile to evaluate
  id: stamp_profile
  inputBinding:
    position: 0
  type: string
