class: CommandLineTool
id: uropa_summary.R.cwl
inputs:
- id: final_hits
  doc: file containing the final hits from UROPA.
  type: boolean
  inputBinding:
    prefix: --finalhits
- id: config
  doc: file containing the json formatted configuration from the UROPA run.
  type: boolean
  inputBinding:
    prefix: --config
- id: output
  doc: file name of output file [summary.pdf].
  type: boolean
  inputBinding:
    prefix: --output
- id: all_hits
  doc: file containing all hits from UROPA.
  type: boolean
  inputBinding:
    prefix: --allhits
- id: call
  doc: original command line call.
  type: boolean
  inputBinding:
    prefix: --call
outputs: []
cwlVersion: v1.1
baseCommand:
- uropa_summary.R
