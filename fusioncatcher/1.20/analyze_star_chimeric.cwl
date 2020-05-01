#!/usr/bin/env cwl-runner

baseCommand:
- analyze_star_chimeric.py
class: CommandLineTool
cwlVersion: v1.0
id: analyze_star_chimeric.py
inputs:
- doc: The input file in PSL format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output PSL file containing the contigs with the best alignment which must
    be unique.
  id: output
  inputBinding:
    prefix: --output
  type: string
