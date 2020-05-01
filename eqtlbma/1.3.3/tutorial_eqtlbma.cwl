#!/usr/bin/env cwl-runner

baseCommand:
- tutorial_eqtlbma.R
class: CommandLineTool
cwlVersion: v1.0
id: tutorial_eqtlbma.r
inputs:
- doc: verbosity level (0/default=1/2)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: absolute path to the package
  id: pkg
  inputBinding:
    prefix: --pkg
  type: boolean
- doc: nb of tissues (default=3)
  id: nsb_grps
  inputBinding:
    prefix: --nsbgrps
  type: boolean
- doc: nb of individuals per subgroup (default=200) individuals are diploid a single
    number, say 200, means same individuals in all subgroups several numbers, say
    200-150-200, means different individuals between subgroups (must agree with --nsbgrps)
  id: ninds
  inputBinding:
    prefix: --ninds
  type: boolean
- doc: nb of genes (default=1000)
  id: n_genes
  inputBinding:
    prefix: --ngenes
  type: boolean
- doc: nb of chromosome(s) (default=1)
  id: nc_hrs
  inputBinding:
    prefix: --nchrs
  type: boolean
- doc: average gene length (default=10000)
  id: agl
  inputBinding:
    prefix: --agl
  type: boolean
- doc: average intergenic length (default=50000)
  id: a_il
  inputBinding:
    prefix: --ail
  type: boolean
- doc: anchor for cis region (default=TSS/TSS+TES)
  id: anchor
  inputBinding:
    prefix: --anchor
  type: boolean
- doc: radius of cis region in 5' (default=1000)
  id: cr5
  inputBinding:
    prefix: --cr5
  type: boolean
- doc: radius of cis region in 3' (default=1000)
  id: cr3
  inputBinding:
    prefix: --cr3
  type: boolean
- doc: fixed nb of cis SNPs per gene (or use --asg)
  id: fsg
  inputBinding:
    prefix: --fsg
  type: boolean
- doc: average nb of cis SNPs per gene (default=50)
  id: as_g
  inputBinding:
    prefix: --asg
  type: boolean
- doc: minor allele frequency (default=0.3)
  id: maf
  inputBinding:
    prefix: --maf
  type: boolean
- doc: proportion of SNPs with rare alleles (with MAF=0.02, default=0.0)
  id: rare
  inputBinding:
    prefix: --rare
  type: boolean
- doc: prior proba for a gene to have no eQTL in any subgroup (default=0.3)
  id: pi0
  inputBinding:
    prefix: --pi0
  type: boolean
- doc: 'error covariance between subgroups (default=1) 0: the SxS covariance matrix
    is diagonal (usually the case if different individuals between subgroups), same
    for all genes 1: the SxS covariance matrix is unconstrained (usually the case
    if same individuals in all subgroups), same for all genes'
  id: cover_r
  inputBinding:
    prefix: --coverr
  type: boolean
- doc: seed for the RNG (default=1859)
  id: seed
  inputBinding:
    prefix: --seed
  type: boolean
- doc: directory in which files are written (current by default)
  id: dir
  inputBinding:
    prefix: --dir
  type: boolean
- doc: nb of cores to run in parallel (default=1)
  id: n_cores
  inputBinding:
    prefix: --ncores
  type: boolean
