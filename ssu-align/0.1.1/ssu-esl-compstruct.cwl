#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-compstruct
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-compstruct
inputs:
- doc: ": use Mathews'relaxed criterion for correctness; allow +/-1 slip"
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': count pseudoknotted base pairs'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ': suppress verbose header'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
