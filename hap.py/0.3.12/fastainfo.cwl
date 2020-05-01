#!/usr/bin/env cwl-runner

baseCommand:
- fastainfo
class: CommandLineTool
cwlVersion: v1.0
id: fastainfo
inputs:
- doc: The input files
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: The output file name.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
