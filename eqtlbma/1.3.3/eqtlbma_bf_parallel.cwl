#!/usr/bin/env cwl-runner

baseCommand:
- eqtlbma_bf_parallel.bash
class: CommandLineTool
cwlVersion: v1.0
id: eqtlbma_bf_parallel.bash
inputs:
- doc: level (0/default=1/2/3)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: path to the binary 'eqtlbma_bf'
  id: p2b
  inputBinding:
    prefix: --p2b
  type: boolean
- doc: directory with lists of features to analyze (BED files) file names have to
    be like '<anything>_<batchId>.<anything>'
  id: gened
  inputBinding:
    prefix: --geneD
  type: boolean
- doc: directory with lists of SNPs to analyze (optional) file names have to be like
    '<anything>_<batchId>.<anything>' each SNP file should correspond to a feature
    file, in the same order
  id: snp_d
  inputBinding:
    prefix: --snpD
  type: boolean
- doc: directory with lists of files with absolute paths to files with summary statistics
    file names have to be like '<anything>_<batchId>.<abything>' if --inssD is given,
    neither --geneD nor --snpD are used (nor --geno, --scoord, --exp, etc)
  id: in_ssd
  inputBinding:
    prefix: --inssD
  type: boolean
- doc: file with seeds (as many as files in --geneD) optional, default=list_seeds.txt.gz
    (should be gzipped)
  id: seed_f
  inputBinding:
    prefix: --seedF
  type: boolean
- doc: task identifier (not for SGE, for SLURM only)
  id: task
  inputBinding:
    prefix: --task
  type: boolean
- doc: which BF to use as the test statistic for the joint-analysis permutations default=none
  id: pbf
  inputBinding:
    prefix: --pbf
  type: boolean
- doc: use the maximum ABF over SNPs as test statistic for permutations
  id: max_bf
  inputBinding:
    prefix: --maxbf
  type: boolean
- doc: number of threads for the permutations default=1
  id: thread
  inputBinding:
    prefix: --thread
  type: boolean
- doc: identifier of the subgroup to analyze
  id: sb_grp
  inputBinding:
    prefix: --sbgrp
  type: boolean
