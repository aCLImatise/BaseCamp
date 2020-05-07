class: CommandLineTool
id: shapeit4.cwl
inputs:
- id: seed
  doc: (=15052011)                Seed of the random number generator
  type: string
  inputBinding:
    prefix: --seed
- id: t
  doc: '[ --thread ] arg (=1)              Number of thread used'
  type: boolean
  inputBinding:
    prefix: -T
- id: i
  doc: '[ --input ] arg                    Genotypes to be phased in VCF/BCF  format'
  type: boolean
  inputBinding:
    prefix: -I
- id: h
  doc: '[ --reference ] arg                Reference panel of haplotypes in  VCF/BCF
    format'
  type: boolean
  inputBinding:
    prefix: -H
- id: s
  doc: '[ --scaffold ] arg                 Scaffold of haplotypes in VCF/BCF  format'
  type: boolean
  inputBinding:
    prefix: -S
- id: m
  doc: '[ --map ] arg                      Genetic map'
  type: boolean
  inputBinding:
    prefix: -M
- id: r
  doc: '[ --region ] arg                   Target region'
  type: boolean
  inputBinding:
    prefix: -R
- id: use_ps
  doc: Informs phasing using PS field from  read based phasing
  type: string
  inputBinding:
    prefix: --use-PS
- id: sequencing
  doc: Default parameter setting for  sequencing data (e.g. high variant  density)
  type: boolean
  inputBinding:
    prefix: --sequencing
- id: mcmc_iterations
  doc: (=5b,1p,1b,1p,1b,1p,5m) Iteration scheme of the MCMC
  type: string
  inputBinding:
    prefix: --mcmc-iterations
- id: mcmc_prune
  doc: (=0.999)             Pruning threshold in genotype graphs
  type: string
  inputBinding:
    prefix: --mcmc-prune
- id: pb_wt_modulo
  doc: (=0.02)             Storage frequency of PBWT indexes in cM (i.e. storage every
    0.02 cM by default)
  type: string
  inputBinding:
    prefix: --pbwt-modulo
- id: pb_wt_depth
  doc: (=4)                 Depth of PBWT indexes to condition on
  type: string
  inputBinding:
    prefix: --pbwt-depth
- id: pb_wt_mac
  doc: (=2)                   Minimal Minor Allele Count at which  PBWT is evaluated
  type: string
  inputBinding:
    prefix: --pbwt-mac
- id: pb_wt_mdr
  doc: (=0.5)                 Maximal Missing Data Rate at which PBWT is evaluated
  type: string
  inputBinding:
    prefix: --pbwt-mdr
- id: ibd2_length
  doc: (=3)                Minimal size of IBD2 tracks for  building copying constraints
  type: string
  inputBinding:
    prefix: --ibd2-length
- id: ibd2_maf
  doc: (=0.01)                Minimal Minor Allele Frequency for  variants to be considered
    in the IBD2  mapping
  type: string
  inputBinding:
    prefix: --ibd2-maf
- id: ibd2_mdr
  doc: (=0.5)                 Maximal Missing data rate for variants  to be considered
    in the IBD2 mapping
  type: string
  inputBinding:
    prefix: --ibd2-mdr
- id: ibd2_count
  doc: (=150)               Minimal number of filtered variants in  IBD2 tracks
  type: string
  inputBinding:
    prefix: --ibd2-count
- id: ibd2_output
  doc: Output all IBD2 constraints in the  specified file (useful for debugging!)
  type: string
  inputBinding:
    prefix: --ibd2-output
- id: w
  doc: '[ --window ] arg (=2.5)            Minimal size of the phasing window in  cM'
  type: boolean
  inputBinding:
    prefix: -W
- id: effective_size
  doc: (=15000)         Effective size of the population
  type: string
  inputBinding:
    prefix: --effective-size
- id: o
  doc: '[ --output ] arg                   Phased haplotypes in VCF/BCF format'
  type: boolean
  inputBinding:
    prefix: -O
- id: log
  doc: Log file
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- shapeit4
