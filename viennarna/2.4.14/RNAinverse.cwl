#!/usr/bin/env cwl-runner

baseCommand:
- RNAinverse
class: CommandLineTool
cwlVersion: v1.0
id: rnainverse
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
- doc: "[=INT]         Search repeatedly for the same structure. If an argument is\
    \ supplied to this option it must follow the option flag immediately. E.g.: -R5\
    \ (default=`100')"
  id: repeat
  inputBinding:
    prefix: --repeat
  type: boolean
- doc: Find sequences using only nucleotides from a given alphabet.
  id: alphabet
  inputBinding:
    prefix: --alphabet
  type: string
- doc: In conjunction with a negative value supplied to -R, print the last subsequence
    and substructure for each unsuccessful search. (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Use minimum energy (-Fm), partition function folding (-Fp) or both (-Fmp).
    (default=`m')
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: In combination with -Fp stop search when sequence is found with E(s)-F is smaller
    than final, where F=-kT*ln(Q).
  id: final
  inputBinding:
    prefix: --final
  type: double
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
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
