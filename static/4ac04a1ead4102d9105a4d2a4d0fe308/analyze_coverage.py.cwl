class: CommandLineTool
id: analyze_coverage.py.cwl
inputs:
- id: in_write_frac_bound
  doc: "If set, write a table in which each row represents an\ninput design and gives\
    \ the fraction of all sequences\nthat are covered by the design. The 'design_id'\
    \ column\ngives the row number of the design in the designs\ninput (1 for the\
    \ first design). The provided argument\nis a path to a TSV file at which to the\
    \ write the\ntable."
  type: long?
  inputBinding:
    prefix: --write-frac-bound
- id: in_write_mean_activity_of_guides
  doc: "If set, write a table in which each row represents an\ninput design and gives\
    \ the mean activity across the\ntarget sequences of the guide set. The 'design_id'\n\
    column gives the row number of the design in the\ndesigns input (1 for the first\
    \ design). The provided\nargument is a path to a TSV file at which to write the\n\
    table. If set, a predictive model must be set without\n--predict-activity-require-highly-active"
  type: long?
  inputBinding:
    prefix: --write-mean-activity-of-guides
- id: in_primer_mismatches
  doc: "Allow for this number of mismatches when determining\nwhether a primer covers\
    \ a sequence (ignore this if the\ntargets only consist of guides)"
  type: long?
  inputBinding:
    prefix: --primer-mismatches
- id: in_guide_mismatches
  doc: "Allow for this number of mismatches when determining\nwhether a guide covers\
    \ a sequence; either this or\n--predict-activity-model-path should be set"
  type: long?
  inputBinding:
    prefix: --guide-mismatches
- id: in_do_not_allow_gu_pairing
  doc: "When determining whether a guide binds to a region of\ntarget sequence, do\
    \ not count G-U (wobble) base pairs\nas matching. Default is to tolerate G-U pairing:\n\
    namely, A in an output guide sequence matches G in the\ntarget and C in an output\
    \ guide sequence matches T in\nthe target (since the synthesized guide is the\
    \ reverse\ncomplement of the output guide sequence)"
  type: boolean?
  inputBinding:
    prefix: --do-not-allow-gu-pairing
- id: in_predict_activity_model_path
  doc: "PREDICT_ACTIVITY_MODEL_PATH\nPaths to directories containing serialized models\
    \ in\nTensorFlow's SavedModel format for predicting guide-\ntarget activity. There\
    \ are two arguments: (1)\nclassification model to determine which guides are\n\
    active; (2) regression model, which is used to\ndetermine which guides (among\
    \ active ones) are highly\nactive. The models/ directory contains example models.\n\
    Either this or --guide-mismatches should be set."
  type: File?
  inputBinding:
    prefix: --predict-activity-model-path
- id: in_predict_activity_th_res
  doc: "PREDICT_ACTIVITY_THRES\nThresholds to use for decisions on output of\npredictive\
    \ models. There are two arguments: (1)\nclassification threshold for deciding\
    \ which guide-\ntarget pairs are active (in [0,1], where higher values\nhave higher\
    \ precision but less recall); (2) regression\nthreshold for deciding which guide-target\
    \ pairs are\nhighly active (>= 0, where higher values limit the\nnumber determined\
    \ to be highly active). If not set but\n--predict-activity-model-path is set,\
    \ then this uses\ndefault thresholds stored with the models. To 'bind\nto' or\
    \ 'cover' a target, the guide-target pair must be\nactive or, if --predict-activity-require-highly-active\n\
    is set, highly active."
  type: long?
  inputBinding:
    prefix: --predict-activity-thres
- id: in_predict_activity_require_highly_active
  doc: "When determining whether a guide-target pair binds\nusing an activity model,\
    \ require that the pair be\npredicted to be highly active (not just active)"
  type: boolean?
  inputBinding:
    prefix: --predict-activity-require-highly-active
- id: in_use_accessions
  doc: "When set, the input file of sequences gives accessions\nrather than being\
    \ a FASTA of sequences -- each line in\nthe file gives an accession. This fetches\
    \ the\nsequences of those accessions uses them as input."
  type: boolean?
  inputBinding:
    prefix: --use-accessions
- id: in_fully_sensitive
  doc: "When set, use a naive, slow sliding approach to find\nbinding for primers\
    \ and guides; otherwise, this uses\nan index to more quickly identify binding\
    \ sites"
  type: boolean?
  inputBinding:
    prefix: --fully-sensitive
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_designs_fn
  doc: "Path to output of running design.py; a TSV file where\neach row contains a\
    \ design (target)"
  type: string
  inputBinding:
    position: 0
- id: in_seqs_fn
  doc: "Path to FASTA file giving sequences against which to\ncompute coverage. (See\
    \ --use-accessions to pass\naccessions as input rather than a FASTA file.)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/adapt:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- analyze_coverage.py
