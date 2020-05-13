class: CommandLineTool
id: pyseer.cwl
inputs:
- id: phenotypes
  doc: Phenotypes file (whitespace separated)
  type: string
  inputBinding:
    prefix: --phenotypes
- id: phenotype_column
  doc: 'Phenotype file column to use [Default: last column]'
  type: string
  inputBinding:
    prefix: --phenotype-column
- id: km_ers
  doc: Kmers file
  type: string
  inputBinding:
    prefix: --kmers
- id: vcf
  doc: VCF file. Will filter any non 'PASS' sites
  type: string
  inputBinding:
    prefix: --vcf
- id: pres
  doc: Presence/absence .Rtab matrix as produced by roary and piggy
  type: string
  inputBinding:
    prefix: --pres
- id: burden
  doc: VCF regions to group variants by for burden testing (requires --vcf). Requires
    vcf to be indexed
  type: string
  inputBinding:
    prefix: --burden
- id: distances
  doc: Strains distance square matrix (fixed or lineage effects)
  type: string
  inputBinding:
    prefix: --distances
- id: load_m
  doc: Load an existing matrix decomposition
  type: string
  inputBinding:
    prefix: --load-m
- id: similarity
  doc: Strains similarity square matrix (for --lmm)
  type: string
  inputBinding:
    prefix: --similarity
- id: load_lmm
  doc: Load an existing lmm cache
  type: string
  inputBinding:
    prefix: --load-lmm
- id: save_m
  doc: Prefix for saving matrix decomposition
  type: string
  inputBinding:
    prefix: --save-m
- id: save_lmm
  doc: Prefix for saving LMM cache
  type: string
  inputBinding:
    prefix: --save-lmm
- id: mds
  doc: 'Type of multidimensional scaling [Default: classic]'
  type: string
  inputBinding:
    prefix: --mds
- id: max_dimensions
  doc: 'Maximum number of dimensions to consider after MDS [Default: 10]'
  type: long
  inputBinding:
    prefix: --max-dimensions
- id: no_distances
  doc: Allow run without a distance matrix
  type: boolean
  inputBinding:
    prefix: --no-distances
- id: continuous
  doc: 'Force continuous phenotype [Default: binary auto- detect]'
  type: boolean
  inputBinding:
    prefix: --continuous
- id: lmm
  doc: Use random instead of fixed effects to correct for population structure. Requires
    a similarity matrix
  type: boolean
  inputBinding:
    prefix: --lmm
- id: wg
  doc: Use a whole genome model for association and prediction. Population structure
    correction is implicit.
  type: string
  inputBinding:
    prefix: --wg
- id: lineage
  doc: Report lineage effects
  type: boolean
  inputBinding:
    prefix: --lineage
- id: lineage_clusters
  doc: 'Custom clusters to use as lineages [Default: MDS components]'
  type: string
  inputBinding:
    prefix: --lineage-clusters
- id: lineage_file
  doc: 'File to write lineage association to [Default: lineage_effects.txt]'
  type: string
  inputBinding:
    prefix: --lineage-file
- id: sequence_reweighting
  doc: Use --lineage-clusters to downweight sequences.
  type: boolean
  inputBinding:
    prefix: --sequence-reweighting
- id: save_vars
  doc: Prefix for saving variants
  type: string
  inputBinding:
    prefix: --save-vars
- id: load_vars
  doc: Prefix for loading variants
  type: string
  inputBinding:
    prefix: --load-vars
- id: save_model
  doc: Prefix for saving model
  type: string
  inputBinding:
    prefix: --save-model
- id: alpha
  doc: 'Set the mixing between l1 and l2 penalties [Default: 0.0069]'
  type: string
  inputBinding:
    prefix: --alpha
- id: n_folds
  doc: 'Number of folds cross-validation to perform [Default: 10]'
  type: string
  inputBinding:
    prefix: --n-folds
- id: min_af
  doc: 'Minimum AF [Default: 0.01]'
  type: long
  inputBinding:
    prefix: --min-af
- id: max_af
  doc: 'Maximum AF [Default: 0.99]'
  type: long
  inputBinding:
    prefix: --max-af
- id: max_missing
  doc: 'Maximum missing (vcf/Rtab) [Default: 0.05]'
  type: long
  inputBinding:
    prefix: --max-missing
- id: filter_p_value
  doc: 'Prefiltering t-test pvalue threshold [Default: 1]'
  type: string
  inputBinding:
    prefix: --filter-pvalue
- id: lrt_p_value
  doc: 'Likelihood ratio test pvalue threshold [Default: 1]'
  type: string
  inputBinding:
    prefix: --lrt-pvalue
- id: cor_filter
  doc: 'Correlation filter for elastic net (phenotype/variant correlation quantile
    at which to start keeping variants) [Default: 0.25]'
  type: string
  inputBinding:
    prefix: --cor-filter
- id: covariates
  doc: User-defined covariates file (tab-delimited, no header, first column contains
    sample names)
  type: string
  inputBinding:
    prefix: --covariates
- id: use_covariates
  doc: "[USE_COVARIATES [USE_COVARIATES ...]] Covariates to use. Format is \"2 3q\
    \ 4\" (q for quantitative) [Default: load covariates but don't use them]"
  type: boolean
  inputBinding:
    prefix: --use-covariates
- id: print_samples
  doc: 'Print sample lists [Default: hide samples]'
  type: boolean
  inputBinding:
    prefix: --print-samples
- id: print_filtered
  doc: 'Print filtered variants (i.e. fitting errors) [Default: hide them]'
  type: boolean
  inputBinding:
    prefix: --print-filtered
- id: output_patterns
  doc: File to print patterns to, useful for finding pvalue threshold
  type: string
  inputBinding:
    prefix: --output-patterns
- id: uncompressed
  doc: 'Uncompressed kmers file [Default: gzipped]'
  type: boolean
  inputBinding:
    prefix: --uncompressed
- id: cpu
  doc: 'Processes [Default: 1]'
  type: string
  inputBinding:
    prefix: --cpu
- id: block_size
  doc: 'Number of variants per core [Default: 3000]'
  type: string
  inputBinding:
    prefix: --block_size
outputs: []
cwlVersion: v1.1
baseCommand:
- pyseer
