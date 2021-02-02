class: CommandLineTool
id: hsp.py.cwl
inputs:
- id: in_tree
  doc: "The full reference tree in newick format containing\nboth study sequences\
    \ (i.e. ASVs or OTUs) and reference\nsequences."
  type: File
  inputBinding:
    prefix: --tree
- id: in_output
  doc: "Output table with predicted abundances per study\nsequence in input tree.\
    \ If the extension \".gz\" is\nadded the table will automatically be gzipped."
  type: File
  inputBinding:
    prefix: --output
- id: in_in_trait
  doc: "Specifies which default trait table should be used.\nUse the --observed_trait_table\
    \ option to input a non-\ndefault trait table."
  type: string
  inputBinding:
    prefix: --in_trait
- id: in_observed_trait_table
  doc: "The input trait table describing directly observed\ntraits (e.g. sequenced\
    \ genomes) in tab-delimited\nformat. Necessary if you want to use a custom table."
  type: File
  inputBinding:
    prefix: --observed_trait_table
- id: in_chunk_size
  doc: "Number of functions to run at a time on one processor.\nNote that you should\
    \ consider how many processes you\nhave specified before changing this option.\
    \ E.g. if\nyou specify the chunk_size to be the total number of\nfunctions, 1\
    \ processor will be used even if you\nspecified more so the job will be substantially\
    \ slower\n(default: 500)."
  type: long
  inputBinding:
    prefix: --chunk_size
- id: in_hsp_method
  doc: "HSP method to use.\"mp\": predict discrete traits using\nmax parsimony. \"\
    emp_prob\": predict discrete traits\nbased on empirical state probabilities across\
    \ tips.\n\"subtree_average\": predict continuous traits using\nsubtree averaging.\
    \ \"pic\": predict continuous traits\nwith phylogentic independent contrast. \"\
    scp\":\nreconstruct continuous traits using squared-change\nparsimony (default:\
    \ mp)."
  type: string
  inputBinding:
    prefix: --hsp_method
- id: in_calculate_nsti
  doc: Calculate NSTI and add to output file.
  type: File
  inputBinding:
    prefix: --calculate_NSTI
- id: in_check
  doc: Check input trait table before HSP.
  type: boolean
  inputBinding:
    prefix: --check
- id: in_processes
  doc: 'Number of processes to run in parallel (default: 1).'
  type: long
  inputBinding:
    prefix: --processes
- id: in_seed
  doc: "Seed to make output reproducible, which is necessary\nfor the emp_prob method\
    \ (default: 100)."
  type: long
  inputBinding:
    prefix: --seed
- id: in_verbose
  doc: "If specified, print out wrapped commands and other\ndetails to screen."
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_calculate_nsti
  doc: Calculate NSTI and add to output file.
  type: File
  outputBinding:
    glob: $(inputs.in_calculate_nsti)
cwlVersion: v1.1
baseCommand:
- hsp.py
