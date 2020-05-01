#!/usr/bin/env cwl-runner

baseCommand:
- uropa2gtf.R
class: CommandLineTool
cwlVersion: v1.0
id: uropa2gtf.r
inputs:
- doc: file or folder with input table(s) which should be reformatted to gtf file
    format
  id: input
  inputBinding:
    prefix: --input
  type: boolean
- doc: gtf_source
  id: gtf_source
  inputBinding:
    prefix: --gtf_source
  type: boolean
- doc: feature
  id: feature
  inputBinding:
    prefix: --feature
  type: boolean
- doc: cores to be used for reformatting
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
