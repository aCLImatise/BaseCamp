class: CommandLineTool
id: hsp.py.cwl
inputs:
- id: tree
  doc: The full reference tree in newick format containing both study sequences (i.e.
    ASVs or OTUs) and reference sequences.
  type: File
  inputBinding:
    prefix: --tree
- id: output
  doc: Output table with predicted abundances per study sequence in input tree. If
    the extension ".gz" is added the table will automatically be gzipped.
  type: File
  inputBinding:
    prefix: --output
- id: i
  doc: '{16S,COG,EC,KO,PFAM,TIGRFAM,PHENO}, --in_trait {16S,COG,EC,KO,PFAM,TIGRFAM,PHENO}
    Specifies which default trait table should be used. Use the --observed_trait_table
    option to input a non- default trait table.'
  type: boolean
  inputBinding:
    prefix: -i
- id: observed_trait_table
  doc: The input trait table describing directly observed traits (e.g. sequenced genomes)
    in tab-delimited format. Necessary if you want to use a custom table.
  type: File
  inputBinding:
    prefix: --observed_trait_table
- id: chunk_size
  doc: 'Number of functions to run at a time on one processor. Note that you should
    consider how many processes you have specified before changing this option. E.g.
    if you specify the chunk_size to be the total number of functions, 1 processor
    will be used even if you specified more so the job will be substantially slower
    (default: 500).'
  type: string
  inputBinding:
    prefix: --chunk_size
- id: hsp_method
  doc: 'HSP method to use."mp": predict discrete traits using max parsimony. "emp_prob":
    predict discrete traits based on empirical state probabilities across tips. "subtree_average":
    predict continuous traits using subtree averaging. "pic": predict continuous traits
    with phylogentic independent contrast. "scp": reconstruct continuous traits using
    squared-change parsimony (default: mp).'
  type: string
  inputBinding:
    prefix: --hsp_method
- id: calculate_nsti
  doc: Calculate NSTI and add to output file.
  type: boolean
  inputBinding:
    prefix: --calculate_NSTI
- id: check
  doc: Check input trait table before HSP.
  type: boolean
  inputBinding:
    prefix: --check
- id: processes
  doc: 'Number of processes to run in parallel (default: 1).'
  type: string
  inputBinding:
    prefix: --processes
- id: seed
  doc: 'Seed to make output reproducible, which is necessary for the emp_prob method
    (default: 100).'
  type: string
  inputBinding:
    prefix: --seed
- id: verbose
  doc: If specified, print out wrapped commands and other details to screen.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hsp.py
