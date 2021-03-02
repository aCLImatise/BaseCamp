class: CommandLineTool
id: lefse_format_input.py.cwl
inputs:
- id: in_output_table
  doc: the formatted table in txt format
  type: string?
  inputBinding:
    prefix: --output_table
- id: in_set_features_rows
  doc: set whether the features are on rows (default) or on
  type: string?
  inputBinding:
    prefix: -f
- id: in_set_use_subclass
  doc: "[1..n_feats]       set which feature use as subclass (default -1 meaning\n\
    no subclass)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_set_value_default
  doc: "set the normalization value (default -1.0 meaning no\nnormalization)"
  type: double?
  inputBinding:
    prefix: -o
- id: in_set_use_subject
  doc: "[1..n_feats]       set which feature use as subject (default -1 meaning\n\
    no subject)"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_set_policy_adopt
  doc: "set the policy to adopt with missin values: f removes\nthe features with missing\
    \ values, s removes samples\nwith missing values (default f)"
  type: string?
  inputBinding:
    prefix: -m
- id: in_set_minimum_cardinality
  doc: "set the minimum cardinality of each subclass\n(subclasses with low cardinalities\
    \ will be grouped\ntogether, if the cardinality is still low, no pairwise\ncomparison\
    \ will be performed with them)"
  type: long?
  inputBinding:
    prefix: -n
- id: in_biom_c
  doc: 'For biom input files: Set which feature use as class'
  type: string?
  inputBinding:
    prefix: -biom_c
- id: in_biom_s
  doc: "For biom input files: set which feature use as\nsubclass\n"
  type: string?
  inputBinding:
    prefix: -biom_s
- id: in_input_file
  doc: "the input file, feature hierarchical level can be\nspecified with | or . and\
    \ those symbols must not be\npresent for other reasons in the input file."
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: the output file containing the data for LEfSe
  type: string
  inputBinding:
    position: 1
- id: in_columns
  doc: -c [1..n_feats]       set which feature use as class (default 1)
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
- lefse-format_input.py
