class: CommandLineTool
id: eqtlbma_bf_parallel.bash.cwl
inputs:
- id: verbose
  doc: level (0/default=1/2/3)
  type: string
  inputBinding:
    prefix: --verbose
- id: p2b
  doc: path to the binary 'eqtlbma_bf'
  type: boolean
  inputBinding:
    prefix: --p2b
- id: gened
  doc: directory with lists of features to analyze (BED files) file names have to
    be like '<anything>_<batchId>.<anything>'
  type: boolean
  inputBinding:
    prefix: --geneD
- id: snp_d
  doc: directory with lists of SNPs to analyze (optional) file names have to be like
    '<anything>_<batchId>.<anything>' each SNP file should correspond to a feature
    file, in the same order
  type: boolean
  inputBinding:
    prefix: --snpD
- id: in_ssd
  doc: directory with lists of files with absolute paths to files with summary statistics
    file names have to be like '<anything>_<batchId>.<abything>' if --inssD is given,
    neither --geneD nor --snpD are used (nor --geno, --scoord, --exp, etc)
  type: boolean
  inputBinding:
    prefix: --inssD
- id: seed_f
  doc: file with seeds (as many as files in --geneD) optional, default=list_seeds.txt.gz
    (should be gzipped)
  type: boolean
  inputBinding:
    prefix: --seedF
- id: task
  doc: task identifier (not for SGE, for SLURM only)
  type: boolean
  inputBinding:
    prefix: --task
- id: pbf
  doc: which BF to use as the test statistic for the joint-analysis permutations default=none
  type: boolean
  inputBinding:
    prefix: --pbf
- id: max_bf
  doc: use the maximum ABF over SNPs as test statistic for permutations
  type: boolean
  inputBinding:
    prefix: --maxbf
- id: thread
  doc: number of threads for the permutations default=1
  type: boolean
  inputBinding:
    prefix: --thread
- id: sb_grp
  doc: identifier of the subgroup to analyze
  type: boolean
  inputBinding:
    prefix: --sbgrp
outputs: []
cwlVersion: v1.1
baseCommand:
- eqtlbma_bf_parallel.bash
