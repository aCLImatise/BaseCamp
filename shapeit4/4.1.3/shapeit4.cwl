#!/usr/bin/env cwl-runner

baseCommand:
- shapeit4
class: CommandLineTool
cwlVersion: v1.0
id: shapeit4
inputs:
- doc: (=15052011)                Seed of the random number generator
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: '[ --thread ] arg (=1)              Number of thread used'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: '[ --input ] arg                    Genotypes to be phased in VCF/BCF  format'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '[ --reference ] arg                Reference panel of haplotypes in  VCF/BCF
    format'
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: '[ --scaffold ] arg                 Scaffold of haplotypes in VCF/BCF  format'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '[ --map ] arg                      Genetic map'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: '[ --region ] arg                   Target region'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: Informs phasing using PS field from  read based phasing
  id: use_ps
  inputBinding:
    prefix: --use-PS
  type: string
- doc: Default parameter setting for  sequencing data (e.g. high variant  density)
  id: sequencing
  inputBinding:
    prefix: --sequencing
  type: boolean
- doc: (=5b,1p,1b,1p,1b,1p,5m) Iteration scheme of the MCMC
  id: mcmc_iterations
  inputBinding:
    prefix: --mcmc-iterations
  type: string
- doc: (=0.999)             Pruning threshold in genotype graphs
  id: mcmc_prune
  inputBinding:
    prefix: --mcmc-prune
  type: string
- doc: (=0.02)             Storage frequency of PBWT indexes in cM (i.e. storage every
    0.02 cM by default)
  id: pb_wt_modulo
  inputBinding:
    prefix: --pbwt-modulo
  type: string
- doc: (=4)                 Depth of PBWT indexes to condition on
  id: pb_wt_depth
  inputBinding:
    prefix: --pbwt-depth
  type: string
- doc: (=2)                   Minimal Minor Allele Count at which  PBWT is evaluated
  id: pb_wt_mac
  inputBinding:
    prefix: --pbwt-mac
  type: string
- doc: (=0.5)                 Maximal Missing Data Rate at which PBWT is evaluated
  id: pb_wt_mdr
  inputBinding:
    prefix: --pbwt-mdr
  type: string
- doc: (=3)                Minimal size of IBD2 tracks for  building copying constraints
  id: ibd2_length
  inputBinding:
    prefix: --ibd2-length
  type: string
- doc: (=0.01)                Minimal Minor Allele Frequency for  variants to be considered
    in the IBD2  mapping
  id: ibd2_maf
  inputBinding:
    prefix: --ibd2-maf
  type: string
- doc: (=0.5)                 Maximal Missing data rate for variants  to be considered
    in the IBD2 mapping
  id: ibd2_mdr
  inputBinding:
    prefix: --ibd2-mdr
  type: string
- doc: (=150)               Minimal number of filtered variants in  IBD2 tracks
  id: ibd2_count
  inputBinding:
    prefix: --ibd2-count
  type: string
- doc: Output all IBD2 constraints in the  specified file (useful for debugging!)
  id: ibd2_output
  inputBinding:
    prefix: --ibd2-output
  type: string
- doc: '[ --window ] arg (=2.5)            Minimal size of the phasing window in  cM'
  id: w
  inputBinding:
    prefix: -W
  type: boolean
- doc: (=15000)         Effective size of the population
  id: effective_size
  inputBinding:
    prefix: --effective-size
  type: string
- doc: '[ --output ] arg                   Phased haplotypes in VCF/BCF format'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: Log file
  id: log
  inputBinding:
    prefix: --log
  type: string
