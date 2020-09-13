class: CommandLineTool
id: ../../../antarna.py.cwl
inputs:
- id: in_cseq
  doc: "Sequence constraint using RNA nucleotide alphabet {A,C,G,U} and wild-card\
    \ \"N\".\n(TYPE: str)"
  type: string
  inputBinding:
    prefix: --Cseq
- id: in_level
  doc: "Sets the level of allowed influence of sequence constraint on the structure\
    \ constraint [0:no influence; 3:extensive influence].\n(TYPE: int)"
  type: long
  inputBinding:
    prefix: --level
- id: in_tgc
  doc: "Objective target GC content in [0,1].\n(TYPE: parseGC)"
  type: long
  inputBinding:
    prefix: --tGC
- id: in_tgc_max
  doc: "Provides a maximum tGC value [0,1] for the case of uniform distribution sampling.\
    \ The regular tGC value serves as minimum value.\n(DEFAULT: -1.0, TYPE: float)"
  type: long
  inputBinding:
    prefix: --tGCmax
- id: in_tgc_var
  doc: "Provides a tGC variance (sigma square) for the case of normal distribution\
    \ sampling. The regular tGC value serves as expectation value (mu).\n(DEFAULT:\
    \ -1.0, TYPE: float)"
  type: double
  inputBinding:
    prefix: --tGCvar
- id: in_temperature
  doc: "Provides a temperature for the folding algorithms.\n(DEFAULT: 37.0, TYPE:\
    \ float)"
  type: double
  inputBinding:
    prefix: --temperature
- id: in_param_file
  doc: "Changes the energy parameterfile of RNAfold. If using this explicitly, please\
    \ provide a suitable energy file delivered by RNAfold.\n(DEFAULT: , TYPE: str)"
  type: File
  inputBinding:
    prefix: --paramFile
- id: in_no_gu_base_pair
  doc: Forbid GU base pairs.
  type: boolean
  inputBinding:
    prefix: --noGUBasePair
- id: in_no_lbp_management
  doc: Disallowing antaRNA lonely base pair-management.
  type: boolean
  inputBinding:
    prefix: --noLBPmanagement
- id: in_no_of_colonies
  doc: "Number of sequences which shall be produced.\n(TYPE: int)"
  type: long
  inputBinding:
    prefix: --noOfColonies
- id: in_output_file
  doc: "Provide a path and an output file, e.g. \"/path/to/the/target_file\".\n(DEFAULT:\
    \ STDOUT, TYPE: str)"
  type: File
  inputBinding:
    prefix: --output_file
- id: in_rpy
  doc: "Switch on PYTHON compatible behavior.\n(DEFAULT: False)"
  type: boolean
  inputBinding:
    prefix: -rPY
- id: in_name
  doc: "Defines a name which is used in the sequence output.\n(DEFAULT: antaRNA, TYPE:\
    \ str)"
  type: string
  inputBinding:
    prefix: --name
- id: in_verbose
  doc: Displayes intermediate output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_verbose
  doc: Prints additional features and stats to the headers of the produced sequences.
    Also adds the structure of the sequence.
  type: boolean
  inputBinding:
    prefix: --output_verbose
- id: in_plot
  doc: Print Terrain Nodes and edges files.
  type: boolean
  inputBinding:
    prefix: --plot
- id: in_seed
  doc: "Provides a seed value for the used pseudo random number generator.\n(DEFAULT:\
    \ None, TYPE: str)"
  type: long
  inputBinding:
    prefix: --seed
- id: in_improve_procedure
  doc: "Select the improving method.  h=hierarchical, s=score_based.\n(DEFAULT: s,\
    \ TYPE: str)"
  type: string
  inputBinding:
    prefix: --improve_procedure
- id: in_resets
  doc: "Amount of maximal terrain resets, until the best solution is retuned as solution.\n\
    (DEFAULT: 5, TYPE: int)"
  type: long
  inputBinding:
    prefix: --Resets
- id: in_ants_per_selection
  doc: "best out of k ants.\n(DEFAULT: 10, TYPE: int)"
  type: long
  inputBinding:
    prefix: --ants_per_selection
- id: in_convergence_count
  doc: "Delimits the convergence count criterion for a reset.\n(DEFAULT: 130, TYPE:\
    \ int)"
  type: long
  inputBinding:
    prefix: --ConvergenceCount
- id: in_ants_ter_conv
  doc: "Delimits the amount of internal ants for termination convergence criterion\
    \ for a reset.\n(DEFAULT: 50, TYPE: int)"
  type: long
  inputBinding:
    prefix: --antsTerConv
- id: in_alpha
  doc: "Sets alpha, probability weight for terrain pheromone influence. [0,1]\n(DEFAULT:\
    \ 1.0, TYPE: float)"
  type: double
  inputBinding:
    prefix: --alpha
- id: in_beta
  doc: "Sets beta, probability weight for terrain path influence. [0,1]\n(DEFAULT:\
    \ 1.0, TYPE: float)"
  type: double
  inputBinding:
    prefix: --beta
- id: in_omega
  doc: Sets the value, which is used in the mimiced 1/x evaluation function in order
    to set a crossing point on the y-axis.
  type: long
  inputBinding:
    prefix: --omega
- id: in_er
  doc: "Pheromone evaporation rate.\n(DEFAULT: 0.2, TYPE: float)"
  type: double
  inputBinding:
    prefix: --ER
- id: in_cstr_weight
  doc: "Structure constraint quality weighting factor. [0,1]\n(DEFAULT: 0.5, TYPE:\
    \ float)"
  type: double
  inputBinding:
    prefix: --Cstrweight
- id: in_cgc_weight
  doc: "GC content constraint quality weighting factor. [0,1]\n(DEFAULT: 5.0, TYPE:\
    \ float)"
  type: double
  inputBinding:
    prefix: --Cgcweight
- id: in_cseq_weight
  doc: "Sequence constraint quality weighting factor. [0,1]\n(DEFAULT: 1.0, TYPE:\
    \ float)"
  type: double
  inputBinding:
    prefix: --Cseqweight
- id: in_time
  doc: "Limiting runtime [seconds]\n(DEFAULT: 600, TYPE: int)\nExample calls:\npython\
    \ antaRNA_vXY.py -Cstr \"...(((...)))...\" -tGC 0.5 -n 2 -v\npython antaRNA_vXY.py\
    \ -Cstr \".........aaa(((...)))aaa.........\" -tGC 0.5 -n 10 --output_file /path/to/antaRNA_TESTRUN\
    \ -v\npython antaRNA_vXY.py -Cstr \"BBBBB....AAA(((...)))AAA....BBBBB\" -Cseq\
    \ \"NNNNANNNNNCNNNNNNNNNNNGNNNNNNUNNN\" --tGC 0.5 -n 10\n#########################################################################\n\
    #       --- Hail to the Queen!!! All power to the swarm!!! ---          #\n#########################################################################\n"
  type: long
  inputBinding:
    prefix: --time
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Provide a path and an output file, e.g. \"/path/to/the/target_file\".\n(DEFAULT:\
    \ STDOUT, TYPE: str)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- antarna.py
