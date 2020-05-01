#!/usr/bin/env cwl-runner

baseCommand:
- bayescan2
class: CommandLineTool
cwlVersion: v1.0
id: bayescan2
inputs:
- doc: Optional output file for pilot runs
  id: out_pilot
  inputBinding:
    prefix: -out_pilot
  type: boolean
- doc: Optional output file for allele frequencies
  id: out_freq
  inputBinding:
    prefix: -out_freq
  type: boolean
