#!/usr/bin/env cwl-runner

baseCommand:
- tepid-map
class: CommandLineTool
cwlVersion: v1.0
id: tepid-map
inputs:
- doc: recursive (optional)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: gzip fastq files (optional)
  id: z
  inputBinding:
    prefix: -z
  type: boolean
