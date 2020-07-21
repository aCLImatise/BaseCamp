class: CommandLineTool
id: ../../../ramen.cwl
inputs:
- id: lin_reg_dump_dir
  doc: Dump (R-format) TSV files of each regression.
  type: string
  inputBinding:
    prefix: --linreg-dumpdir
- id: repeats
  doc: (default=10,000) Number of times to sample for p-value determination.
  type: long
  inputBinding:
    prefix: --repeats
- id: p_value_cut_off
  doc: (default=0.05) Only show results with p-value <= this cutoff
  type: double
  inputBinding:
    prefix: --pvalue-cutoff
- id: bg_format
  doc: '[0|2|3] source used to determine background frequencies 0: uniform background
    1: MEME motif file 2: Background file'
  type: boolean
  inputBinding:
    prefix: --bgformat
- id: bg_file
  doc: file containing background frequencies
  type: string
  inputBinding:
    prefix: --bgfile
- id: motif_format
  doc: '[meme|tamo|regexp] format of input motif file (default meme)'
  type: boolean
  inputBinding:
    prefix: --motif-format
- id: pseudo_count
  doc: <float, default = 0.25> Pseudocount for motif affinity scan
  type: boolean
  inputBinding:
    prefix: --pseudocount
- id: verbose
  doc: <1...5>                 Integer describing verbosity. Best used as first argument
    in list.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: motif_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ramen
