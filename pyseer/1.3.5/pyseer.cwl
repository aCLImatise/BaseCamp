#!/usr/bin/env cwl-runner

baseCommand:
- pyseer
class: CommandLineTool
cwlVersion: v1.0
id: pyseer
inputs:
- doc: Phenotypes file (whitespace separated)
  id: phenotypes
  inputBinding:
    prefix: --phenotypes
  type: string
- doc: 'Phenotype file column to use [Default: last column]'
  id: phenotype_column
  inputBinding:
    prefix: --phenotype-column
  type: string
- doc: Kmers file
  id: km_ers
  inputBinding:
    prefix: --kmers
  type: string
- doc: VCF file. Will filter any non 'PASS' sites
  id: vcf
  inputBinding:
    prefix: --vcf
  type: string
- doc: Presence/absence .Rtab matrix as produced by roary and piggy
  id: pres
  inputBinding:
    prefix: --pres
  type: string
- doc: VCF regions to group variants by for burden testing (requires --vcf). Requires
    vcf to be indexed
  id: burden
  inputBinding:
    prefix: --burden
  type: string
- doc: Strains distance square matrix (fixed or lineage effects)
  id: distances
  inputBinding:
    prefix: --distances
  type: string
- doc: Load an existing matrix decomposition
  id: load_m
  inputBinding:
    prefix: --load-m
  type: string
- doc: Strains similarity square matrix (for --lmm)
  id: similarity
  inputBinding:
    prefix: --similarity
  type: string
- doc: Load an existing lmm cache
  id: load_lmm
  inputBinding:
    prefix: --load-lmm
  type: string
- doc: Prefix for saving matrix decomposition
  id: save_m
  inputBinding:
    prefix: --save-m
  type: string
- doc: Prefix for saving LMM cache
  id: save_lmm
  inputBinding:
    prefix: --save-lmm
  type: string
- doc: 'Type of multidimensional scaling [Default: classic]'
  id: mds
  inputBinding:
    prefix: --mds
  type: string
- doc: 'Maximum number of dimensions to consider after MDS [Default: 10]'
  id: max_dimensions
  inputBinding:
    prefix: --max-dimensions
  type: long
- doc: Allow run without a distance matrix
  id: no_distances
  inputBinding:
    prefix: --no-distances
  type: boolean
- doc: 'Force continuous phenotype [Default: binary auto- detect]'
  id: continuous
  inputBinding:
    prefix: --continuous
  type: boolean
- doc: Use random instead of fixed effects to correct for population structure. Requires
    a similarity matrix
  id: lmm
  inputBinding:
    prefix: --lmm
  type: boolean
- doc: Use a whole genome model for association and prediction. Population structure
    correction is implicit.
  id: wg
  inputBinding:
    prefix: --wg
  type: string
- doc: Report lineage effects
  id: lineage
  inputBinding:
    prefix: --lineage
  type: boolean
- doc: 'Custom clusters to use as lineages [Default: MDS components]'
  id: lineage_clusters
  inputBinding:
    prefix: --lineage-clusters
  type: string
- doc: 'File to write lineage association to [Default: lineage_effects.txt]'
  id: lineage_file
  inputBinding:
    prefix: --lineage-file
  type: string
- doc: Use --lineage-clusters to downweight sequences.
  id: sequence_reweighting
  inputBinding:
    prefix: --sequence-reweighting
  type: boolean
- doc: Prefix for saving variants
  id: save_vars
  inputBinding:
    prefix: --save-vars
  type: string
- doc: Prefix for loading variants
  id: load_vars
  inputBinding:
    prefix: --load-vars
  type: string
- doc: Prefix for saving model
  id: save_model
  inputBinding:
    prefix: --save-model
  type: string
- doc: 'Set the mixing between l1 and l2 penalties [Default: 0.0069]'
  id: alpha
  inputBinding:
    prefix: --alpha
  type: string
- doc: 'Number of folds cross-validation to perform [Default: 10]'
  id: n_folds
  inputBinding:
    prefix: --n-folds
  type: string
- doc: 'Minimum AF [Default: 0.01]'
  id: min_af
  inputBinding:
    prefix: --min-af
  type: long
- doc: 'Maximum AF [Default: 0.99]'
  id: max_af
  inputBinding:
    prefix: --max-af
  type: long
- doc: 'Maximum missing (vcf/Rtab) [Default: 0.05]'
  id: max_missing
  inputBinding:
    prefix: --max-missing
  type: long
- doc: 'Prefiltering t-test pvalue threshold [Default: 1]'
  id: filter_p_value
  inputBinding:
    prefix: --filter-pvalue
  type: string
- doc: 'Likelihood ratio test pvalue threshold [Default: 1]'
  id: lrt_p_value
  inputBinding:
    prefix: --lrt-pvalue
  type: string
- doc: 'Correlation filter for elastic net (phenotype/variant correlation quantile
    at which to start keeping variants) [Default: 0.25]'
  id: cor_filter
  inputBinding:
    prefix: --cor-filter
  type: string
- doc: User-defined covariates file (tab-delimited, no header, first column contains
    sample names)
  id: covariates
  inputBinding:
    prefix: --covariates
  type: string
- doc: "[USE_COVARIATES [USE_COVARIATES ...]] Covariates to use. Format is \"2 3q\
    \ 4\" (q for quantitative) [Default: load covariates but don't use them]"
  id: use_covariates
  inputBinding:
    prefix: --use-covariates
  type: boolean
- doc: 'Print sample lists [Default: hide samples]'
  id: print_samples
  inputBinding:
    prefix: --print-samples
  type: boolean
- doc: 'Print filtered variants (i.e. fitting errors) [Default: hide them]'
  id: print_filtered
  inputBinding:
    prefix: --print-filtered
  type: boolean
- doc: File to print patterns to, useful for finding pvalue threshold
  id: output_patterns
  inputBinding:
    prefix: --output-patterns
  type: string
- doc: 'Uncompressed kmers file [Default: gzipped]'
  id: uncompressed
  inputBinding:
    prefix: --uncompressed
  type: boolean
- doc: 'Processes [Default: 1]'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: 'Number of variants per core [Default: 3000]'
  id: block_size
  inputBinding:
    prefix: --block_size
  type: string
