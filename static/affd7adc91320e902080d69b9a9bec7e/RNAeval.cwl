class: CommandLineTool
id: RNAeval.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_verbose
  doc: Print out energy contribution of each loop in the
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_temp
  doc: "Rescale energy parameters to a temperature of temp\nC. Default is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop hairpins.\nMostly for testing.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for bases\nadjacent to helices in free\
    \ ends and multi-loops\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_energy_model
  doc: "Rarely used option to fold sequences from the\nartificial ABCD... alphabet,\
    \ where A pairs B,\nC-D etc.  Use the energy parameters for GC (-e\n1) or AU (-e\
    \ 2) pairs."
  type: long?
  inputBinding:
    prefix: --energyModel
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_circ
  doc: Assume a circular (instead of linear) RNA
  type: boolean?
  inputBinding:
    prefix: --circ
- id: in_log_ml
  doc: "Recalculate energies of structures using a\nlogarithmic energy function for\
    \ multi-loops\nbefore output.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --logML
- id: in_program
  doc: "--noconv               Do not automatically substitude nucleotide \"T\" \n\
    with \"U\"\n(default=off)"
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
hints: []
cwlVersion: v1.1
baseCommand:
- RNAeval
