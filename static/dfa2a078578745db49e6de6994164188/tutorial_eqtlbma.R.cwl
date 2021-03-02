class: CommandLineTool
id: tutorial_eqtlbma.R.cwl
inputs:
- id: in_verbose
  doc: verbosity level (0/default=1/2)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_pkg
  doc: absolute path to the package
  type: boolean?
  inputBinding:
    prefix: --pkg
- id: in_nsb_grps
  doc: nb of tissues (default=3)
  type: boolean?
  inputBinding:
    prefix: --nsbgrps
- id: in_ninds
  doc: "nb of individuals per subgroup (default=200)\nindividuals are diploid\na single\
    \ number, say 200, means same individuals in all subgroups\nseveral numbers, say\
    \ 200-150-200, means different individuals between subgroups (must agree with\
    \ --nsbgrps)"
  type: boolean?
  inputBinding:
    prefix: --ninds
- id: in_n_genes
  doc: nb of genes (default=1000)
  type: boolean?
  inputBinding:
    prefix: --ngenes
- id: in_nc_hrs
  doc: nb of chromosome(s) (default=1)
  type: boolean?
  inputBinding:
    prefix: --nchrs
- id: in_agl
  doc: average gene length (default=10000)
  type: boolean?
  inputBinding:
    prefix: --agl
- id: in_a_il
  doc: average intergenic length (default=50000)
  type: boolean?
  inputBinding:
    prefix: --ail
- id: in_anchor
  doc: anchor for cis region (default=TSS/TSS+TES)
  type: boolean?
  inputBinding:
    prefix: --anchor
- id: in_cr_five
  doc: radius of cis region in 5' (default=1000)
  type: boolean?
  inputBinding:
    prefix: --cr5
- id: in_cr_three
  doc: radius of cis region in 3' (default=1000)
  type: boolean?
  inputBinding:
    prefix: --cr3
- id: in_fsg
  doc: fixed nb of cis SNPs per gene (or use --asg)
  type: boolean?
  inputBinding:
    prefix: --fsg
- id: in_as_g
  doc: average nb of cis SNPs per gene (default=50)
  type: boolean?
  inputBinding:
    prefix: --asg
- id: in_maf
  doc: minor allele frequency (default=0.3)
  type: boolean?
  inputBinding:
    prefix: --maf
- id: in_rare
  doc: proportion of SNPs with rare alleles (with MAF=0.02, default=0.0)
  type: boolean?
  inputBinding:
    prefix: --rare
- id: in_pi_zero
  doc: prior proba for a gene to have no eQTL in any subgroup (default=0.3)
  type: boolean?
  inputBinding:
    prefix: --pi0
- id: in_cover_r
  doc: "error covariance between subgroups (default=1)\n0: the SxS covariance matrix\
    \ is diagonal (usually the case if different individuals between subgroups), same\
    \ for all genes\n1: the SxS covariance matrix is unconstrained (usually the case\
    \ if same individuals in all subgroups), same for all genes"
  type: boolean?
  inputBinding:
    prefix: --coverr
- id: in_seed
  doc: seed for the RNG (default=1859)
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_dir
  doc: directory in which files are written (current by default)
  type: boolean?
  inputBinding:
    prefix: --dir
- id: in_n_cores
  doc: nb of cores to run in parallel (default=1)
  type: boolean?
  inputBinding:
    prefix: --ncores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tutorial_eqtlbma.R
