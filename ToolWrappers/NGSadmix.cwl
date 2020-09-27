class: CommandLineTool
id: NGSadmix.cwl
inputs:
- id: in_likes
  doc: likelihood filename
  type: File
  inputBinding:
    prefix: -likes
- id: in_of_ancestral_populations
  doc: of ancestral populations
  type: long
  inputBinding:
    prefix: -K
- id: in_fname
  doc: population frequencies
  type: string
  inputBinding:
    prefix: -fname
- id: in_qname
  doc: proportions
  type: string
  inputBinding:
    prefix: -qname
- id: in_out_files
  doc: for output files
  type: string
  inputBinding:
    prefix: -outfiles
- id: in_print_info
  doc: ID and mean maf for the SNPs that were analysed
  type: string
  inputBinding:
    prefix: -printInfo
- id: in_seed
  doc: for initial guess in EM
  type: string
  inputBinding:
    prefix: -seed
- id: in_of_threads
  doc: of threads
  type: long
  inputBinding:
    prefix: -P
- id: in_method
  doc: 0 no acceleration of EM algorithm
  type: long
  inputBinding:
    prefix: -method
- id: in_mist_ol
  doc: for considering site as missing
  type: string
  inputBinding:
    prefix: -misTol
- id: in_to_l_like_five_zero
  doc: difference in 50 iterations
  type: long
  inputBinding:
    prefix: -tolLike50
- id: in_to_l
  doc: for convergence
  type: string
  inputBinding:
    prefix: -tol
- id: in_dym_bound
  doc: 'dymamic boundaries (1: yes (default) 0: no)'
  type: long
  inputBinding:
    prefix: -dymBound
- id: in_maxiter
  doc: number of EM iterations
  type: long
  inputBinding:
    prefix: -maxiter
- id: in_min_maf
  doc: minor allele frequency
  type: string
  inputBinding:
    prefix: -minMaf
- id: in_min_lrt
  doc: likelihood ratio value for maf>0
  type: long
  inputBinding:
    prefix: -minLrt
- id: in_mini_nd
  doc: number of informative individuals
  type: long
  inputBinding:
    prefix: -minInd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- NGSadmix
