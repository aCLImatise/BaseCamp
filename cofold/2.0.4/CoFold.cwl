class: CommandLineTool
id: CoFold.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden  options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: constraint
  doc: Calculate structures subject to constraints. (default=off)
  type: boolean
  inputBinding:
    prefix: --constraint
- id: noconv
  doc: Do not automatically substitude nucleotide  "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: nops
  doc: Do not produce postscript drawing of the mfe  structure. (default=off)
  type: boolean
  inputBinding:
    prefix: --noPS
- id: part_func
  doc: "[=INT]          Calculate the partition function and base  pairing probability\
    \ matrix. (default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: me_a
  doc: "[=gamma]             Calculate an MEA (maximum expected accuracy)  structure,\
    \ where the expected accuracy is  computed from the pair probabilities: each \
    \ base pair (i,j) gets a score 2*gamma*p_ij and  the score of an unpaired base\
    \ is given by the  probability of not forming a pair. (default=`1.')"
  type: boolean
  inputBinding:
    prefix: --MEA
- id: circ
  doc: Assume a circular (instead of linear) RNA  molecule. (default=off)
  type: boolean
  inputBinding:
    prefix: --circ
- id: dangles
  doc: How to treat "dangling end" energies for  bases adjacent to helices in free
    ends and  multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs  (helices of length 1). (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
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
  doc: Read energy parameters from paramfile, instead  of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- CoFold
