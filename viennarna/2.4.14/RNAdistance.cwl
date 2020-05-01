#!/usr/bin/env cwl-runner

baseCommand:
- RNAdistance
class: CommandLineTool
cwlVersion: v1.0
id: rnadistance
inputs:
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Specify the distance representation to be used in calculations. (default=`f')
  id: distance
  inputBinding:
    prefix: --distance
  type: string
- doc: "|m|f|c         Specify the comparison directive. (default=`p')"
  id: compare
  inputBinding:
    prefix: --compare
  type: string
- doc: Use the Bruce Shapiro's cost matrix for comparing coarse structures. (default=off)
  id: shapiro
  inputBinding:
    prefix: --shapiro
  type: boolean
- doc: "[=<filename>]  Print an \"alignment\" with gaps of the structures, to show\
    \ matching substructures. The aligned structures are written to <filename>, if\
    \ specified. (default=`none')"
  id: backtrack
  inputBinding:
    prefix: --backtrack
  type: boolean
