#!/usr/bin/env cwl-runner

baseCommand:
- RNAup
class: CommandLineTool
cwlVersion: v1.0
id: rnaup
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
- doc: Calculate structures subject to constraints. (default=off)
  id: constraint
  inputBinding:
    prefix: --constraint
  type: boolean
- doc: Do not produce an output file (default=off)
  id: no_output_file
  inputBinding:
    prefix: --no_output_file
  type: boolean
- doc: Do not produce a header with the command line parameters used in the outputfile
    (default=off)
  id: no_header
  inputBinding:
    prefix: --no_header
  type: boolean
- doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: specifies the length of the unstructured region in the output. (default=`4')
  id: u_length
  inputBinding:
    prefix: --ulength
  type: long
- doc: Specify the contributions listed in the output (default=`S')
  id: contributions
  inputBinding:
    prefix: --contributions
  type: string
- doc: Activate pairwise interaction mode (default=off)
  id: interaction_pairwise
  inputBinding:
    prefix: --interaction_pairwise
  type: boolean
- doc: Activate interaction mode using first sequence only (default=off)
  id: interaction_first
  inputBinding:
    prefix: --interaction_first
  type: boolean
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
