class: CommandLineTool
id: RNAinverse.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_alphabet
  doc: Find sequences using only nucleotides from a given
  type: string
  inputBinding:
    prefix: --alphabet
- id: in_print_last_subsequence
  doc: ', print the last subsequence and substructure'
  type: boolean
  inputBinding:
    prefix: -R
- id: in_function
  doc: "Use minimum energy (-Fm), partition function\nfolding (-Fp) or both (-Fmp).\n\
    (default=`m')"
  type: string
  inputBinding:
    prefix: --function
- id: in_final
  doc: "In combination with -Fp stop search when sequence\nis found with E(s)-F is\
    \ smaller than final,\nwhere F=-kT*ln(Q)."
  type: double
  inputBinding:
    prefix: --final
- id: in_temp
  doc: "Rescale energy parameters to a temperature of temp\nC. Default is 37C."
  type: long
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop hairpins.\nMostly for testing.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for bases\nadjacent to helices in free\
    \ ends and multi-loops\n(default=`2')"
  type: long
  inputBinding:
    prefix: --dangles
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set."
  type: File
  inputBinding:
    prefix: --paramFile
- id: in_program
  doc: "-R, --repeat[=INT]         Search repeatedly for the same structure.\nIf an\
    \ argument is supplied to this option it\nmust follow the option flag immediately.\
    \ E.g.:\n-R5\n(default=`100')"
  type: string
  inputBinding:
    position: 0
- id: in_alphabet_dot
  doc: -v, --verbose              In conjunction with a negative value supplied to
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNAinverse
