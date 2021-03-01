class: CommandLineTool
id: enet_predict_pyseer.cwl
inputs:
- id: in_threshold
  doc: Threshold to pick binary predictions
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_lineage_clusters
  doc: "Custom clusters to use as lineages to report\nstratified accuracy"
  type: string?
  inputBinding:
    prefix: --lineage-clusters
- id: in_true_values
  doc: Pheno file with known phenotypes to calculate accuracy
  type: File?
  inputBinding:
    prefix: --true-values
- id: in_ignore_missing
  doc: "Treat missing values as REF/0 rather than using the\nmean AF"
  type: boolean?
  inputBinding:
    prefix: --ignore-missing
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
- id: in_uncompressed
  doc: 'Uncompressed kmers file [Default: gzipped]'
  type: boolean?
  inputBinding:
    prefix: --uncompressed
- id: in_covariates
  doc: "User-defined covariates file (tab-delimited, no\nheader, first column contains\
    \ sample names)"
  type: File?
  inputBinding:
    prefix: --covariates
- id: in_use_covariates
  doc: "[USE_COVARIATES [USE_COVARIATES ...]]\nCovariates to use. Format is \"2 3q\
    \ 4\" (q for\nquantitative) [Default: load covariates but don't use\nthem]\n"
  type: boolean?
  inputBinding:
    prefix: --use-covariates
- id: in_model
  doc: Name of fitted model pickle file (.pkl)
  type: string
  inputBinding:
    position: 0
- id: in_samples
  doc: File with samples to predict
  type: string
  inputBinding:
    position: 1
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
- enet_predict_pyseer
