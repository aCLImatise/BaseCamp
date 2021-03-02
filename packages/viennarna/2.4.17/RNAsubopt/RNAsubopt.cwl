class: CommandLineTool
id: RNAsubopt.cwl
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
- id: in_verbose
  doc: Be verbose.  (default=off)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_noconv
  doc: "Do not automatically substitude nucleotide\n\"T\" with \"U\".  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noconv
- id: in_in_file
  doc: Read a file instead of reading from stdin.
  type: File?
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: '[=<filename>]    Print output to file instead of stdout.'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_auto_id
  doc: "Automatically generate an ID for each sequence.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names).  (default=`sequence')"
  type: File?
  inputBinding:
    prefix: --id-prefix
- id: in_max_bp_span
  doc: Set the maximum base pair span.  (default=`-1')
  type: long?
  inputBinding:
    prefix: --maxBPspan
- id: in_constraint
  doc: '[=<filename>] Apply structural constraint(s) during'
  type: boolean?
  inputBinding:
    prefix: --constraint
- id: in_enforce_constraint
  doc: "Enforce base pairs given by round brackets ( )\nin structure constraint. \
    \ (default=off)"
  type: boolean?
  inputBinding:
    prefix: --enforceConstraint
- id: in_shape
  doc: "Use SHAPE reactivity data in the folding\nrecursions (does not work for Zuker\n\
    suboptimals)."
  type: File?
  inputBinding:
    prefix: --shape
- id: in_delta_energy
  doc: "Compute suboptimal structures with energy in a\ncertain range of the optimum\
    \ (kcal/mol)."
  type: string?
  inputBinding:
    prefix: --deltaEnergy
- id: in_sorted
  doc: "Sort the suboptimal structures by energy and\nlexicographical order.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_stoch_bt
  doc: "Randomly draw structures according to their\nprobability in the Boltzmann\
    \ ensemble."
  type: long?
  inputBinding:
    prefix: --stochBT
- id: in_nonredundant
  doc: "Enable non-redundant sampling strategy.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --nonRedundant
- id: in_circ
  doc: Assume a circular (instead of linear) RNA
  type: boolean?
  inputBinding:
    prefix: --circ
- id: in_dos
  doc: Compute density of states instead of secondary
  type: boolean?
  inputBinding:
    prefix: --dos
- id: in_zuker
  doc: "Compute Zuker suboptimals instead of all\nsuboptimal structures within an\
    \ energy band\naround the MFE.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --zuker
- id: in_g_quad
  doc: "Incoorporate G-Quadruplex formation.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --gquad
- id: in_temp
  doc: "Rescale energy parameters to a temperature in\ndegrees centigrade.  (default=`37.0')"
  type: double?
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "Specify \"dangling end\" model for bases\nadjacent to helices in free ends\
    \ and\nmulti-loops.  (default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: Do not allow GU pairs.  (default=off)
  type: boolean?
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noClosingGU
- id: in_log_ml
  doc: "Recompute energies of structures using a\nlogarithmic energy function for\
    \ multi-loops\nbefore output.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --logML
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_molecule_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
- id: in_structures_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: '[=<filename>]    Print output to file instead of stdout.'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names).  (default=`sequence')"
  type: File?
  outputBinding:
    glob: $(inputs.in_id_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNAsubopt
