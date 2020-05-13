class: CommandLineTool
id: SCNIC_analysis.py_between.cwl
inputs:
- id: output_loc
  doc: 'output file location (default: None)'
  type: string
  inputBinding:
    prefix: --output_loc
- id: correl_method
  doc: 'correlation method (default: spearman)'
  type: string
  inputBinding:
    prefix: --correl_method
- id: p_adjust
  doc: 'p-value adjustment (default: fdr_bh)'
  type: string
  inputBinding:
    prefix: --p_adjust
- id: min_sample
  doc: 'minimum number of samples present in (default: None)'
  type: long
  inputBinding:
    prefix: --min_sample
- id: max_p
  doc: 'minimum p-value to determine edges (default: None)'
  type: long
  inputBinding:
    prefix: --max_p
- id: min_r
  doc: 'minimum R to determine edges (default: None)'
  type: long
  inputBinding:
    prefix: --min_r
- id: sparc_c_filter
  doc: 'filter using parameters from SparCC publication (default: False)'
  type: boolean
  inputBinding:
    prefix: --sparcc_filter
- id: procs
  doc: 'number of processors to use (default: 1)'
  type: string
  inputBinding:
    prefix: --procs
- id: force
  doc: 'force overwrite output folder if it already exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- SCNIC_analysis.py
- between
