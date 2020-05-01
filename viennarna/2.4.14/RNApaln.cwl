#!/usr/bin/env cwl-runner

baseCommand:
- RNApaln
class: CommandLineTool
cwlVersion: v1.0
id: rnapaln
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
- doc: "[=filename] Print an \"alignment\" with gaps of the profiles The aligned structures\
    \ are written to filename, if specified Otherwise output is written to stdout,\
    \ unless the -Xm option is set in which case \"backtrack.file\" is used. (default=`stdout')"
  id: print_alignment
  inputBinding:
    prefix: --printAlignment
  type: boolean
- doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: Set the alignment mode to be used
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: Set the gap open penalty
  id: gap_o
  inputBinding:
    prefix: --gapo
  type: string
- doc: Set the gap extension penalty
  id: gape
  inputBinding:
    prefix: --gape
  type: string
- doc: Set the weight of sequence (compared to structure) in the scoring function.
  id: seq_w
  inputBinding:
    prefix: --seqw
  type: string
- doc: Use free end-gaps (default=off)
  id: end_gaps
  inputBinding:
    prefix: --endgaps
  type: boolean
- doc: Rescale energy parameters to a temperature of temp C. Default is 37C.
  id: temp
  inputBinding:
    prefix: --temp
  type: string
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
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
