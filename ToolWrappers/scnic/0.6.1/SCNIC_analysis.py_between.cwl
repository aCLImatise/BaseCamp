class: CommandLineTool
id: SCNIC_analysis.py_between.cwl
inputs:
- id: in_table_one
  doc: 'table to be correlated (default: None)'
  type: long?
  inputBinding:
    prefix: --table1
- id: in_table_two
  doc: 'second table to be correlated (default: None)'
  type: long?
  inputBinding:
    prefix: --table2
- id: in_output_loc
  doc: 'output file location (default: None)'
  type: File?
  inputBinding:
    prefix: --output_loc
- id: in_correl_method
  doc: 'correlation method (default: spearman)'
  type: string?
  inputBinding:
    prefix: --correl_method
- id: in_p_adjust
  doc: 'p-value adjustment (default: fdr_bh)'
  type: string?
  inputBinding:
    prefix: --p_adjust
- id: in_min_sample
  doc: 'minimum number of samples present in (default: None)'
  type: long?
  inputBinding:
    prefix: --min_sample
- id: in_max_p
  doc: 'minimum p-value to determine edges (default: None)'
  type: string?
  inputBinding:
    prefix: --max_p
- id: in_min_r
  doc: 'minimum R to determine edges (default: None)'
  type: long?
  inputBinding:
    prefix: --min_r
- id: in_sparc_c_filter
  doc: "filter using parameters from SparCC publication\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --sparcc_filter
- id: in_procs
  doc: 'number of processors to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --procs
- id: in_force
  doc: "force overwrite output folder if it already exists\n(default: False)\n"
  type: Directory?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_loc
  doc: 'output file location (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_loc)
- id: out_force
  doc: "force overwrite output folder if it already exists\n(default: False)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- SCNIC_analysis.py
- between
