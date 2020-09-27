class: CommandLineTool
id: RNAsubopt.cwl
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
- id: in_verbose
  doc: "Be verbose\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_noconv
  doc: "Do not automatically substitude nucleotide\n\"T\" with \"U\"\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noconv
- id: in_in_file
  doc: Read a file instead of reading from stdin
  type: File
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: '[=<filename>]    Print output to file instead of stdout'
  type: File
  inputBinding:
    prefix: --outfile
- id: in_auto_id
  doc: "Automatically generate an ID for each sequence.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`sequence')"
  type: File
  inputBinding:
    prefix: --id-prefix
- id: in_max_bp_span
  doc: "Set the maximum base pair span\n(default=`-1')"
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: in_constraint
  doc: "[=<filename>] Calculate structures subject to constraints.\n(default=`')"
  type: boolean
  inputBinding:
    prefix: --constraint
- id: in_batch
  doc: "Use constraints for multiple sequences.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --batch
- id: in_canonical_bp_only
  doc: "Remove non-canonical base pairs from the\nstructure constraint\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --canonicalBPonly
- id: in_enforce_constraint
  doc: "Enforce base pairs given by round brackets ( )\nin structure constraint\n\
    (default=off)"
  type: boolean
  inputBinding:
    prefix: --enforceConstraint
- id: in_shape
  doc: "Use SHAPE reactivity data in the folding\nrecursions (does not work for Zuker\n\
    suboptimals and stochastic backtracking yet)"
  type: File
  inputBinding:
    prefix: --shape
- id: in_shape_method
  doc: "=[D/Z/W] + [optional parameters]\nSpecify the method how to convert SHAPE\n\
    reactivity data to pseudo energy\ncontributions\n(default=`D')"
  type: boolean
  inputBinding:
    prefix: --shapeMethod
- id: in_shape_conversion
  doc: "+ [optional parameters]\nSpecify the method used to convert SHAPE\nreactivities\
    \ to pairing probabilities when\nusing the SHAPE approach of Zarringhalam et\n\
    al.\n(default=`O')"
  type: string
  inputBinding:
    prefix: --shapeConversion
- id: in_delta_energy
  doc: "Compute suboptimal structures with energy in a\ncertain range of the optimum\
    \ (kcal/mol).\nDefault is calculation of mfe structure only."
  type: string
  inputBinding:
    prefix: --deltaEnergy
- id: in_delta_energy_post
  doc: "Only print structures with energy within range\nof the mfe after post reevaluation\
    \ of\nenergies."
  type: string
  inputBinding:
    prefix: --deltaEnergyPost
- id: in_sorted
  doc: "Sort the suboptimal structures by energy.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --sorted
- id: in_stoch_bt
  doc: "Instead of producing all suboptimals in an\nenergy range, produce a random\
    \ sample of\nsuboptimal structures, drawn with\nprobabilities equal to their Boltzmann\n\
    weights via stochastic backtracking in the\npartition function. The -e and -p\
    \ options are\nmutually exclusive."
  type: long
  inputBinding:
    prefix: --stochBT
- id: in_stoch_bt_en
  doc: "Same as \"--stochBT\" but also print out the\nenergies and probabilities of\
    \ the backtraced\nstructures."
  type: long
  inputBinding:
    prefix: --stochBT_en
- id: in_nonredundant
  doc: "Enable non-redundant sampling strategy.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --nonRedundant
- id: in_circ
  doc: Assume a circular (instead of linear) RNA
  type: boolean
  inputBinding:
    prefix: --circ
- id: in_dos
  doc: Compute density of states instead of secondary
  type: boolean
  inputBinding:
    prefix: --dos
- id: in_zuker
  doc: "Compute Zuker suboptimals instead of all\nsuboptimal structures within an\
    \ engery band\naround the MFE.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --zuker
- id: in_g_quad
  doc: "Incoorporate G-Quadruplex formation into the\nstructure prediction algorithm\n\
    (no support of G-quadruplex prediction for\nstochastic backtracking and Zuker-style\n\
    suboptimals yet)\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --gquad
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins.\n(default=off)"
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
- id: in_log_ml
  doc: "Recalculate energies of structures using a\nlogarithmic energy function for\
    \ multi-loops\nbefore output.  (default=off)"
  type: boolean
  inputBinding:
    prefix: --logML
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File
  inputBinding:
    prefix: --paramFile
- id: in_molecule_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
- id: in_structures
  doc: (default=off)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: '[=<filename>]    Print output to file instead of stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`sequence')"
  type: File
  outputBinding:
    glob: $(inputs.in_id_prefix)
cwlVersion: v1.1
baseCommand:
- RNAsubopt
