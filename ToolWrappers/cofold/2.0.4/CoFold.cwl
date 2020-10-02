class: CommandLineTool
id: CoFold.cwl
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
  doc: Do not produce postscript drawing of the mfe
  type: boolean
  inputBinding:
    prefix: --noPS
- id: in_part_func
  doc: "[=INT]          Calculate the partition function and base\npairing probability\
    \ matrix.\n(default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: in_me_a
  doc: "[=gamma]             Calculate an MEA (maximum expected accuracy)\nstructure,\
    \ where the expected accuracy is\ncomputed from the pair probabilities: each\n\
    base pair (i,j) gets a score 2*gamma*p_ij and\nthe score of an unpaired base is\
    \ given by the\nprobability of not forming a pair.\n(default=`1.')"
  type: boolean
  inputBinding:
    prefix: --MEA
- id: in_circ
  doc: Assume a circular (instead of linear) RNA
  type: boolean
  inputBinding:
    prefix: --circ
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins. Mostly for testing.\n(default=off)"
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
- id: in_structure_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 1
- id: in_molecule_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CoFold
