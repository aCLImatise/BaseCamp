class: CommandLineTool
id: RNAduplex.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_noconv
  doc: "Do not automatically substitude nucleotide \"T\"\nwith \"U\"\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noconv
- id: in_delta_energy
  doc: "Compute suboptimal structures with energy in a\ncertain range of the optimum\
    \ (kcal/mol). Default\nis calculation of mfe structure only."
  type: string?
  inputBinding:
    prefix: --deltaEnergy
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
- id: in_no_lp
  doc: "Produce structures without lonely pairs (helices\nof length 1).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
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
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_program
  doc: "-s, --sorted               sort the printed output by free energy\n(default=off)"
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
- RNAduplex
