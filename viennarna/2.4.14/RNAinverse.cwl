class: CommandLineTool
id: RNAinverse.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: repeat
  doc: "[=INT]         Search repeatedly for the same structure. If an argument is\
    \ supplied to this option it must follow the option flag immediately. E.g.: -R5\
    \ (default=`100')"
  type: boolean
  inputBinding:
    prefix: --repeat
- id: alphabet
  doc: Find sequences using only nucleotides from a given alphabet.
  type: string
  inputBinding:
    prefix: --alphabet
- id: verbose
  doc: In conjunction with a negative value supplied to -R, print the last subsequence
    and substructure for each unsuccessful search. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: function
  doc: Use minimum energy (-Fm), partition function folding (-Fp) or both (-Fmp).
    (default=`m')
  type: string
  inputBinding:
    prefix: --function
- id: final
  doc: In combination with -Fp stop search when sequence is found with E(s)-F is smaller
    than final, where F=-kT*ln(Q).
  type: double
  inputBinding:
    prefix: --final
- id: dangles
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_gu
  doc: Do not allow GU pairs (default=off)
  type: boolean
  inputBinding:
    prefix: --noGU
- id: no_closing_gu
  doc: Do not allow GU pairs at the end of helices (default=off)
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAinverse
