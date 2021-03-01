class: CommandLineTool
id: pyseer.cwl
inputs:
- id: in_phenotypes
  doc: Phenotypes file (whitespace separated)
  type: File?
  inputBinding:
    prefix: --phenotypes
- id: in_phenotype_column
  doc: 'Phenotype file column to use [Default: last column]'
  type: File?
  inputBinding:
    prefix: --phenotype-column
- id: in_km_ers
  doc: Kmers file
  type: File?
  inputBinding:
    prefix: --kmers
- id: in_vcf
  doc: VCF file. Will filter any non 'PASS' sites
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_pres
  doc: Presence/absence .Rtab matrix as produced by roary and
  type: string?
  inputBinding:
    prefix: --pres
- id: in_distances
  doc: "Strains distance square matrix (fixed or lineage\neffects)"
  type: string?
  inputBinding:
    prefix: --distances
- id: in_load_m
  doc: Load an existing matrix decomposition
  type: string?
  inputBinding:
    prefix: --load-m
- id: in_similarity
  doc: Strains similarity square matrix (for --lmm)
  type: string?
  inputBinding:
    prefix: --similarity
- id: in_load_lmm
  doc: Load an existing lmm cache
  type: string?
  inputBinding:
    prefix: --load-lmm
- id: in_save_m
  doc: Prefix for saving matrix decomposition
  type: string?
  inputBinding:
    prefix: --save-m
- id: in_save_lmm
  doc: Prefix for saving LMM cache
  type: string?
  inputBinding:
    prefix: --save-lmm
- id: in_mds
  doc: 'Type of multidimensional scaling [Default: classic]'
  type: string?
  inputBinding:
    prefix: --mds
- id: in_max_dimensions
  doc: "Maximum number of dimensions to consider after MDS\n[Default: 10]"
  type: long?
  inputBinding:
    prefix: --max-dimensions
- id: in_no_distances
  doc: Allow run without a distance matrix
  type: boolean?
  inputBinding:
    prefix: --no-distances
- id: in_continuous
  doc: "Force continuous phenotype [Default: binary auto-\ndetect]"
  type: boolean?
  inputBinding:
    prefix: --continuous
- id: in_lmm
  doc: "Use random instead of fixed effects to correct for\npopulation structure.\
    \ Requires a similarity matrix"
  type: boolean?
  inputBinding:
    prefix: --lmm
- id: in_wg
  doc: "Use a whole genome model for association and\nprediction. Population structure\
    \ correction is\nimplicit."
  type: string?
  inputBinding:
    prefix: --wg
- id: in_lineage
  doc: Report lineage effects
  type: boolean?
  inputBinding:
    prefix: --lineage
- id: in_lineage_clusters
  doc: "Custom clusters to use as lineages [Default: MDS\ncomponents]"
  type: string?
  inputBinding:
    prefix: --lineage-clusters
- id: in_lineage_file
  doc: "File to write lineage association to [Default:\nlineage_effects.txt]"
  type: File?
  inputBinding:
    prefix: --lineage-file
- id: in_sequence_reweighting
  doc: Use --lineage-clusters to downweight sequences.
  type: boolean?
  inputBinding:
    prefix: --sequence-reweighting
- id: in_save_vars
  doc: Prefix for saving variants
  type: string?
  inputBinding:
    prefix: --save-vars
- id: in_load_vars
  doc: Prefix for loading variants
  type: string?
  inputBinding:
    prefix: --load-vars
- id: in_save_model
  doc: Prefix for saving model
  type: string?
  inputBinding:
    prefix: --save-model
- id: in_alpha
  doc: "Set the mixing between l1 and l2 penalties [Default:\n0.0069]"
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_n_folds
  doc: "Number of folds cross-validation to perform [Default:\n10]"
  type: long?
  inputBinding:
    prefix: --n-folds
- id: in_min_af
  doc: 'Minimum AF [Default: 0.01]'
  type: long?
  inputBinding:
    prefix: --min-af
- id: in_max_af
  doc: 'Maximum AF [Default: 0.99]'
  type: long?
  inputBinding:
    prefix: --max-af
- id: in_max_missing
  doc: 'Maximum missing (vcf/Rtab) [Default: 0.05]'
  type: long?
  inputBinding:
    prefix: --max-missing
- id: in_filter_p_value
  doc: 'Prefiltering t-test pvalue threshold [Default: 1]'
  type: long?
  inputBinding:
    prefix: --filter-pvalue
- id: in_lrt_p_value
  doc: 'Likelihood ratio test pvalue threshold [Default: 1]'
  type: long?
  inputBinding:
    prefix: --lrt-pvalue
- id: in_cor_filter
  doc: "Correlation filter for elastic net (phenotype/variant\ncorrelation quantile\
    \ at which to start keeping\nvariants) [Default: 0.25]"
  type: double?
  inputBinding:
    prefix: --cor-filter
- id: in_covariates
  doc: "User-defined covariates file (tab-delimited, no\nheader, first column contains\
    \ sample names)"
  type: File?
  inputBinding:
    prefix: --covariates
- id: in_use_covariates
  doc: "[USE_COVARIATES [USE_COVARIATES ...]]\nCovariates to use. Format is \"2 3q\
    \ 4\" (q for\nquantitative) [Default: load covariates but don't use\nthem]"
  type: boolean?
  inputBinding:
    prefix: --use-covariates
- id: in_print_samples
  doc: 'Print sample lists [Default: hide samples]'
  type: boolean?
  inputBinding:
    prefix: --print-samples
- id: in_print_filtered
  doc: "Print filtered variants (i.e. fitting errors)\n[Default: hide them]"
  type: boolean?
  inputBinding:
    prefix: --print-filtered
- id: in_output_patterns
  doc: "File to print patterns to, useful for finding pvalue\nthreshold"
  type: File?
  inputBinding:
    prefix: --output-patterns
- id: in_uncompressed
  doc: 'Uncompressed kmers file [Default: gzipped]'
  type: boolean?
  inputBinding:
    prefix: --uncompressed
- id: in_cpu
  doc: 'Processes [Default: 1]'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_block_size
  doc: 'Number of variants per core [Default: 3000]'
  type: long?
  inputBinding:
    prefix: --block_size
- id: in_piggy
  doc: --burden BURDEN       VCF regions to group variants by for burden testing
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyseer
