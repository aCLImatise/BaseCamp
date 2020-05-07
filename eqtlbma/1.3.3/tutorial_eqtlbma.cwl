class: CommandLineTool
id: tutorial_eqtlbma.R.cwl
inputs:
- id: verbose
  doc: verbosity level (0/default=1/2)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: pkg
  doc: absolute path to the package
  type: boolean
  inputBinding:
    prefix: --pkg
- id: nsb_grps
  doc: nb of tissues (default=3)
  type: boolean
  inputBinding:
    prefix: --nsbgrps
- id: ninds
  doc: nb of individuals per subgroup (default=200) individuals are diploid a single
    number, say 200, means same individuals in all subgroups several numbers, say
    200-150-200, means different individuals between subgroups (must agree with --nsbgrps)
  type: boolean
  inputBinding:
    prefix: --ninds
- id: n_genes
  doc: nb of genes (default=1000)
  type: boolean
  inputBinding:
    prefix: --ngenes
- id: nc_hrs
  doc: nb of chromosome(s) (default=1)
  type: boolean
  inputBinding:
    prefix: --nchrs
- id: agl
  doc: average gene length (default=10000)
  type: boolean
  inputBinding:
    prefix: --agl
- id: a_il
  doc: average intergenic length (default=50000)
  type: boolean
  inputBinding:
    prefix: --ail
- id: anchor
  doc: anchor for cis region (default=TSS/TSS+TES)
  type: boolean
  inputBinding:
    prefix: --anchor
- id: cr5
  doc: radius of cis region in 5' (default=1000)
  type: boolean
  inputBinding:
    prefix: --cr5
- id: cr3
  doc: radius of cis region in 3' (default=1000)
  type: boolean
  inputBinding:
    prefix: --cr3
- id: fsg
  doc: fixed nb of cis SNPs per gene (or use --asg)
  type: boolean
  inputBinding:
    prefix: --fsg
- id: as_g
  doc: average nb of cis SNPs per gene (default=50)
  type: boolean
  inputBinding:
    prefix: --asg
- id: maf
  doc: minor allele frequency (default=0.3)
  type: boolean
  inputBinding:
    prefix: --maf
- id: rare
  doc: proportion of SNPs with rare alleles (with MAF=0.02, default=0.0)
  type: boolean
  inputBinding:
    prefix: --rare
- id: pi0
  doc: prior proba for a gene to have no eQTL in any subgroup (default=0.3)
  type: boolean
  inputBinding:
    prefix: --pi0
- id: cover_r
  doc: 'error covariance between subgroups (default=1) 0: the SxS covariance matrix
    is diagonal (usually the case if different individuals between subgroups), same
    for all genes 1: the SxS covariance matrix is unconstrained (usually the case
    if same individuals in all subgroups), same for all genes'
  type: boolean
  inputBinding:
    prefix: --coverr
- id: seed
  doc: seed for the RNG (default=1859)
  type: boolean
  inputBinding:
    prefix: --seed
- id: dir
  doc: directory in which files are written (current by default)
  type: boolean
  inputBinding:
    prefix: --dir
- id: n_cores
  doc: nb of cores to run in parallel (default=1)
  type: boolean
  inputBinding:
    prefix: --ncores
outputs: []
cwlVersion: v1.1
baseCommand:
- tutorial_eqtlbma.R
