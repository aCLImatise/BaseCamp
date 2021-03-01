class: CommandLineTool
id: RNAeval.cwl
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
  doc: "Print out energy contribution of each loop in\nthe structure.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_jobs
  doc: "[=number]           Split batch input into jobs and start\nprocessing in parallel\
    \ using multiple\nthreads. A value of 0 indicates to use as\nmany parallel threads\
    \ as computation cores\nare available.\n(default=`0')"
  type: boolean?
  inputBinding:
    prefix: --jobs
- id: in_in_file
  doc: Read a file instead of reading from stdin
  type: File?
  inputBinding:
    prefix: --infile
- id: in_msa
  doc: "Input is multiple sequence alignment in\nStockholm 1.0 format\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --msa
- id: in_auto_id
  doc: "Automatically generate an ID for each sequence.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`sequence')"
  type: File?
  inputBinding:
    prefix: --id-prefix
- id: in_id_delim
  doc: "Change the delimiter between prefix and\nincreasing number for automatically\
    \ generated\nIDs (as used in output file names)\n(default=`_')"
  type: long?
  inputBinding:
    prefix: --id-delim
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins. Mostly for testing.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for\nbases adjacent to helices in free\
    \ ends and\nmulti-loops\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_energy_model
  doc: "Rarely used option to fold sequences from the\nartificial ABCD... alphabet,\
    \ where A pairs B,\nC-D etc.  Use the energy parameters for GC\n(-e 1) or AU (-e\
    \ 2) pairs."
  type: long?
  inputBinding:
    prefix: --energyModel
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_circ
  doc: Assume a circular (instead of linear) RNA
  type: boolean?
  inputBinding:
    prefix: --circ
- id: in_g_quad
  doc: "Incoorporate G-Quadruplex formation into the\nstructure prediction algorithm\n\
    (default=off)"
  type: boolean?
  inputBinding:
    prefix: --gquad
- id: in_log_ml
  doc: "Recalculate energies of structures using a\nlogarithmic energy function for\
    \ multi-loops\nbefore output.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --logML
- id: in_shape
  doc: "file        Use SHAPE reactivity data in the folding\nrecursions (does not\
    \ work for PF yet)"
  type: File?
  inputBinding:
    prefix: --shape
- id: in_shape_method
  doc: "=[D/Z/W] + [optional parameters]\nSpecify the method how to convert SHAPE\n\
    reactivity data to pseudo energy\ncontributions\n(default=`D')"
  type: boolean?
  inputBinding:
    prefix: --shapeMethod
- id: in_shape_conversion
  doc: "/C/S/L/O  + [optional parameters]\nSpecify the method used to convert SHAPE\n\
    reactivities to pairing probabilities when\nusing the SHAPE approach of Zarringhalam\
    \ et\nal.\n(default=`O')"
  type: string?
  inputBinding:
    prefix: --shapeConversion
- id: in_mis
  doc: "Output \"most informative sequence\" instead of\nsimple consensus: For each\
    \ column of the\nalignment output the set of nucleotides with\nfrequency greater\
    \ than average in IUPAC\nnotation.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --mis
- id: in_c_factor
  doc: "Set the weight of the covariance term in the\nenergy function\n(default=`1.0')"
  type: double?
  inputBinding:
    prefix: --cfactor
- id: in_n_factor
  doc: "Set the penalty for non-compatible sequences in\nthe covariance term of the\
    \ energy function\n(default=`1.0')"
  type: double?
  inputBinding:
    prefix: --nfactor
- id: in_ribo_sum_file
  doc: "use specified Ribosum Matrix instead of normal\nenergy model. Matrixes to\
    \ use should be 6x6\nmatrices, the order of the terms is AU, CG,\nGC, GU, UA,\
    \ UG."
  type: File?
  inputBinding:
    prefix: --ribosum_file
- id: in_ribo_sum_scoring
  doc: "use ribosum scoring matrix. The matrix is\nchosen according to the minimal\
    \ and maximal\npairwise identities of the sequences in the\nfile.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --ribosum_scoring
- id: in_old
  doc: use old energy evaluation, treating gaps as
  type: boolean?
  inputBinding:
    prefix: --old
- id: in_program
  doc: "--noconv                  Do not automatically substitude nucleotide\n\"T\"\
    \ with \"U\"\n(default=off)"
  type: string
  inputBinding:
    position: 0
- id: in_molecule_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
- id: in_characters_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`sequence')"
  type: File?
  outputBinding:
    glob: $(inputs.in_id_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- RNAeval
