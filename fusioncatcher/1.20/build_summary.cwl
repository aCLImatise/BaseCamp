#!/usr/bin/env cwl-runner

baseCommand:
- build_summary.py
class: CommandLineTool
cwlVersion: v1.0
id: build_summary.py
inputs:
- doc: The input report containg detailed information about fusion genes found.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The input report containg detailed information about viruses/bacteria/found
    found.
  id: viruses
  inputBinding:
    prefix: --viruses
  type: string
- doc: The output summary of gene/transcript fusions found.
  id: output
  inputBinding:
    prefix: --output
  type: string
