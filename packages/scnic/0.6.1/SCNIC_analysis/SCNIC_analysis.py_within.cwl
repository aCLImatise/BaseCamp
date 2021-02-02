class: CommandLineTool
id: SCNIC_analysis.py_within.cwl
inputs:
- id: in_input_loc
  doc: 'location of input biom file (default: None)'
  type: File
  inputBinding:
    prefix: --input_loc
- id: in_output_loc
  doc: 'output directory (default: None)'
  type: Directory
  inputBinding:
    prefix: --output_loc
- id: in_correl_method
  doc: 'correlation method (default: sparcc)'
  type: string
  inputBinding:
    prefix: --correl_method
- id: in_p_adjust
  doc: 'p-value adjustment (default: fdr_bh)'
  type: string
  inputBinding:
    prefix: --p_adjust
- id: in_min_sample
  doc: 'minimum number of samples present in (default: None)'
  type: long
  inputBinding:
    prefix: --min_sample
- id: in_procs
  doc: 'number of processors to use (default: 1)'
  type: long
  inputBinding:
    prefix: --procs
- id: in_sparc_c_filter
  doc: 'filter as described in SparCC paper (default: False)'
  type: boolean
  inputBinding:
    prefix: --sparcc_filter
- id: in_sparc_c_p
  doc: "Calculate p-value for sparCC R value, give number of\nbootstraps (default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --sparcc_p
- id: in_verbose
  doc: 'give verbose messages to STDOUT (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_loc
  doc: 'output directory (default: None)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_loc)
cwlVersion: v1.1
baseCommand:
- SCNIC_analysis.py
- within
