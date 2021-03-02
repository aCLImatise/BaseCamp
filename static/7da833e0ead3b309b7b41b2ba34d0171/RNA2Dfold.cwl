class: CommandLineTool
id: RNA2Dfold.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_num_threads
  doc: "Set the number of threads used for calculations\n(only available when compiled\
    \ with OpenMP\nsupport)"
  type: long?
  inputBinding:
    prefix: --numThreads
- id: in_part_func
  doc: "calculate partition function and thus, Boltzmann\nprobabilities and Gibbs\
    \ free energy\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --partfunc
- id: in_stoch_bt
  doc: "backtrack a certain number of Boltzmann samples\nfrom the appropriate k,l\
    \ neighborhood(s)"
  type: long?
  inputBinding:
    prefix: --stochBT
- id: in_neighborhood
  doc: ":<l>  backtrack structures from certain\nk,l-neighborhood only, can be specified\n\
    multiple times (<k>:<l>,<m>:<n>,...)"
  type: string?
  inputBinding:
    prefix: --neighborhood
- id: in_pf_scale
  doc: scaling factor for pf to avoid overflows
  type: string?
  inputBinding:
    prefix: --pfScale
- id: in_no_bt
  doc: "do not backtrack structures, calculate energy\ncontributions only\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noBT
- id: in_circ
  doc: Assume a circular (instead of linear) RNA
  type: boolean?
  inputBinding:
    prefix: --circ
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_max_dist_one
  doc: maximum distance to first reference structure
  type: long?
  inputBinding:
    prefix: --maxDist1
- id: in_max_dist_two
  doc: maximum distance to second reference structure
  type: long?
  inputBinding:
    prefix: --maxDist2
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins. Mostly for testing.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for bases\nadjacent to helices in free\
    \ ends and\nmulti-loops\n(possible values=\"0\", \"2\" default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noClosingGU
- id: in_program
  doc: "--noconv                Do not automatically substitude nucleotide \"T\"\n\
    with \"U\"\n(default=off)"
  type: string
  inputBinding:
    position: 0
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
- RNA2Dfold
