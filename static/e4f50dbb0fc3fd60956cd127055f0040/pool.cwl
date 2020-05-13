class: CommandLineTool
id: pool.py.cwl
inputs:
- id: probe_count_tsv
  doc: Path to TSV file that contains probe counts for each dataset and combination
    of parameters; the first row must be a header, the first column must give a dataset
    ('dataset'), the last column must list a number of probes ('num_probes'), and
    the intermediary columns give parameter values
  type: string
  inputBinding:
    position: 0
- id: target_probe_count
  doc: Constraint on the total number of probes in the design; generally, parameters
    will be selected such that the number of probes, when pooled across datasets,
    is just below this number
  type: string
  inputBinding:
    position: 1
- id: param_vals_tsv
  doc: Path to TSV file in which to output optimal parameter values
  type: string
  inputBinding:
    position: 2
- id: use_nd
  doc: Use the higher dimensional (n > 2) interpolation and search functions for optimizing
    parameters. This is required if the input table of probe counts contains more
    than 2 parameters. This does not round parameters to integers or to be placed
    on a grid -- i.e., they will be output as fractional values (from which probe
    counts were interpolated). When using this, --loss- coeffs should also be set
    (default is 1 for all parameters).
  type: boolean
  inputBinding:
    prefix: --use-nd
- id: loss_coeffs
  doc: Coefficients on parameters in the loss function. These must be specified in
    the same order as the parameter columns in the input table. Default is 1 for mismatches
    and 1/100 for cover_extension (or, when --use-nd is specified, 1 for all parameters).
  type: string[]
  inputBinding:
    prefix: --loss-coeffs
- id: dataset_weights
  doc: Path to TSV file that contains a weight for each dataset to use in the loss
    function. The first row must be a header, the first column must provide the dataset
    ('dataset') and the second column must provide the weight of the dataset ('weight').
    If not provided, the default is a weight of 1 for each dataset.
  type: string
  inputBinding:
    prefix: --dataset-weights
- id: debug
  doc: Debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- pool.py
