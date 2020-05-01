#!/usr/bin/env cwl-runner

baseCommand:
- uropa_summary.R
class: CommandLineTool
cwlVersion: v1.0
id: uropa_summary.r
inputs:
- doc: file containing the final hits from UROPA.
  id: final_hits
  inputBinding:
    prefix: --finalhits
  type: boolean
- doc: file containing the json formatted configuration from the UROPA run.
  id: config
  inputBinding:
    prefix: --config
  type: boolean
- doc: file name of output file [summary.pdf].
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: file containing all hits from UROPA.
  id: all_hits
  inputBinding:
    prefix: --allhits
  type: boolean
- doc: original command line call.
  id: call
  inputBinding:
    prefix: --call
  type: boolean
