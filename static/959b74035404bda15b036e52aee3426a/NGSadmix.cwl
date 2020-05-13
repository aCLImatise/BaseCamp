class: CommandLineTool
id: NGSadmix.cwl
inputs:
- id: likes
  doc: likelihood filename
  type: string
  inputBinding:
    prefix: -likes
- id: k
  doc: of ancestral populations
  type: string
  inputBinding:
    prefix: -K
- id: fname
  doc: population frequencies
  type: string
  inputBinding:
    prefix: -fname
- id: qname
  doc: proportions
  type: string
  inputBinding:
    prefix: -qname
- id: out_files
  doc: for output files
  type: string
  inputBinding:
    prefix: -outfiles
- id: print_info
  doc: ID and mean maf for the SNPs that were analysed
  type: string
  inputBinding:
    prefix: -printInfo
- id: seed
  doc: for initial guess in EM
  type: string
  inputBinding:
    prefix: -seed
- id: p
  doc: of threads
  type: string
  inputBinding:
    prefix: -P
- id: method
  doc: 0 no acceleration of EM algorithm
  type: string
  inputBinding:
    prefix: -method
- id: mist_ol
  doc: for considering site as missing
  type: string
  inputBinding:
    prefix: -misTol
- id: to_llike50
  doc: difference in 50 iterations
  type: string
  inputBinding:
    prefix: -tolLike50
- id: to_l
  doc: for convergence
  type: string
  inputBinding:
    prefix: -tol
- id: dym_bound
  doc: 'dymamic boundaries (1: yes (default) 0: no)'
  type: string
  inputBinding:
    prefix: -dymBound
- id: maxiter
  doc: number of EM iterations
  type: long
  inputBinding:
    prefix: -maxiter
- id: min_maf
  doc: minor allele frequency
  type: long
  inputBinding:
    prefix: -minMaf
- id: min_lrt
  doc: likelihood ratio value for maf>0
  type: long
  inputBinding:
    prefix: -minLrt
- id: mini_nd
  doc: number of informative individuals
  type: long
  inputBinding:
    prefix: -minInd
outputs: []
cwlVersion: v1.1
baseCommand:
- NGSadmix
