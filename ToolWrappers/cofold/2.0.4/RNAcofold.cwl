class: CommandLineTool
id: RNAcofold.cwl
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
- id: in_noconv
  doc: "Do not automatically substitude nucleotide\n\"T\" with \"U\"\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noconv
- id: in_nops
  doc: "Do not produce postscript output\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noPS
- id: in_part_func
  doc: "[=INT]          Calculate the partition function and base\npairing probability\
    \ matrix in addition to the\nmfe structure. Default is calculation of mfe\nstructure\
    \ only.\n(default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: in_all_pf
  doc: "Compute the partition function and free\nenergies not only of the hetero-dimer\n\
    consisting of the two input sequences (the\n\"AB dimer\"), but also of the homo-dimers\
    \ AA\nand BB as well as A and B monomers.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --all_pf
- id: in_concentrations
  doc: "In addition to everything listed under the -a\noption, read in initial monomer\n\
    concentrations and compute the expected\nequilibrium concentrations of the 5 possible\n\
    species (AB, AA, BB, A, B).\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --concentrations
- id: in_conc_file
  doc: "Specify a file with initial concentrations for\nthe to sequences."
  type: File
  inputBinding:
    prefix: --concfile
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special stabilizing energies for\ncertain tetra-loops. Mostly\
    \ for testing.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for\nbases adjacent to helices in free\
    \ ends and\nmulti-loops\n(default=`2')"
  type: long
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noLP
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
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File
  inputBinding:
    prefix: --paramFile
- id: in_program
  doc: "-C, --constraint              Calculate structures subject to constraints.\n\
    (default=off)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNAcofold
