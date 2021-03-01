class: CommandLineTool
id: pool.py.cwl
inputs:
- id: in_round_params
  doc: "ROUND_PARAMS\n<m> <e>; round mismatches parameter to the nearest\nmultiple\
    \ of m and cover_extension parameter to the\nnearest multiple of e"
  type: string?
  inputBinding:
    prefix: --round-params
- id: in_use_nd
  doc: "Use the higher dimensional (n > 2) interpolation and\nsearch functions for\
    \ optimizing parameters. This is\nrequired if the input table of probe counts\
    \ contains\nmore than 2 parameters. This does not round parameters\nto integers\
    \ or to be placed on a grid -- i.e., they\nwill be output as fractional values\
    \ (from which probe\ncounts were interpolated). When using this, --loss-\ncoeffs\
    \ should also be set (default is 1 for all\nparameters)."
  type: boolean?
  inputBinding:
    prefix: --use-nd
- id: in_loss_coeffs
  doc: "Coefficients on parameters in the loss function. These\nmust be specified\
    \ in the same order as the parameter\ncolumns in the input table. Default is 1\
    \ for\nmismatches and 1/100 for cover_extension (or, when\n--use-nd is specified,\
    \ 1 for all parameters)."
  type: string[]
  inputBinding:
    prefix: --loss-coeffs
- id: in_dataset_weights
  doc: "Path to TSV file that contains a weight for each\ndataset to use in the loss\
    \ function. The first row\nmust be a header, the first column must provide the\n\
    dataset ('dataset') and the second column must provide\nthe weight of the dataset\
    \ ('weight'). If not provided,\nthe default is a weight of 1 for each dataset."
  type: File?
  inputBinding:
    prefix: --dataset-weights
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
- id: in_probe_count_tsv
  doc: "Path to TSV file that contains probe counts for each\ndataset and combination\
    \ of parameters; the first row\nmust be a header, the first column must give a\
    \ dataset\n('dataset'), the last column must list a number of\nprobes ('num_probes'),\
    \ and the intermediary columns\ngive parameter values"
  type: string
  inputBinding:
    position: 0
- id: in_target_probe_count
  doc: "Constraint on the total number of probes in the\ndesign; generally, parameters\
    \ will be selected such\nthat the number of probes, when pooled across\ndatasets,\
    \ is just below this number"
  type: string
  inputBinding:
    position: 1
- id: in_param_vals_tsv
  doc: Path to TSV file in which to output optimal parameter
  type: string
  inputBinding:
    position: 2
- id: in_values
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pool.py
