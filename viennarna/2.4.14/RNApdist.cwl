#!/usr/bin/env cwl-runner

baseCommand:
- RNApdist
class: CommandLineTool
cwlVersion: v1.0
id: rnapdist
inputs:
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: "|m|f|c         Specify the comparison directive. (default=`p')"
  id: compare
  inputBinding:
    prefix: --compare
  type: string
- doc: "[=<filename>]  Print an \"alignment\" with gaps of the profiles. The aligned\
    \ structures are written to <filename>, if specified. (default=`none')"
  id: backtrack
  inputBinding:
    prefix: --backtrack
  type: boolean
- doc: set energy model for treatment of dangling bases (possible values="0", "2"
    default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  id: no_lp
  inputBinding:
    prefix: --noLP
  type: boolean
- doc: Do not allow GU pairs (default=off)
  id: no_gu
  inputBinding:
    prefix: --noGU
  type: boolean
- doc: Do not allow GU pairs at the end of helices (default=off)
  id: no_closing_gu
  inputBinding:
    prefix: --noClosingGU
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
