#!/usr/bin/env cwl-runner

baseCommand:
- assignGenomeAnnotation
class: CommandLineTool
cwlVersion: v1.0
id: assigngenomeannotation
inputs:
- doc: (File to output annotations for each peak/tag, by default not created)
  id: ann
  inputBinding:
    prefix: -ann
  type: File
- doc: (File to output annotation statistics, default to stdout)
  id: stats
  inputBinding:
    prefix: -stats
  type: File
