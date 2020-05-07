class: CommandLineTool
id: RNAcofold.cwl
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
  doc: Do not produce postscript output (default=off)
  type: boolean
  inputBinding:
    prefix: --noPS
- id: part_func
  doc: "[=INT]          Calculate the partition function and base  pairing probability\
    \ matrix in addition to the  mfe structure. Default is calculation of mfe  structure\
    \ only. (default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: all_pf
  doc: Compute the partition function and free  energies not only of the hetero-dimer  consisting
    of the two input sequences (the  "AB dimer"), but also of the homo-dimers AA  and
    BB as well as A and B monomers. (default=off)
  type: boolean
  inputBinding:
    prefix: --all_pf
- id: concentrations
  doc: In addition to everything listed under the -a  option, read in initial monomer  concentrations
    and compute the expected  equilibrium concentrations of the 5 possible  species
    (AB, AA, BB, A, B). (default=off)
  type: boolean
  inputBinding:
    prefix: --concentrations
- id: conc_file
  doc: Specify a file with initial concentrations for  the to sequences.
  type: File
  inputBinding:
    prefix: --concfile
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
- RNAcofold
