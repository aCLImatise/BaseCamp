class: CommandLineTool
id: enet_predict_pyseer.cwl
inputs:
- id: model
  doc: Name of fitted model pickle file (.pkl)
  type: string
  inputBinding:
    position: 0
- id: samples
  doc: File with samples to predict
  type: string
  inputBinding:
    position: 1
- id: threshold
  doc: Threshold to pick binary predictions
  type: string
  inputBinding:
    prefix: --threshold
- id: lineage_clusters
  doc: Custom clusters to use as lineages to report stratified accuracy
  type: string
  inputBinding:
    prefix: --lineage-clusters
- id: true_values
  doc: Pheno file with known phenotypes to calculate accuracy
  type: string
  inputBinding:
    prefix: --true-values
- id: ignore_missing
  doc: Treat missing values as REF/0 rather than using the mean AF
  type: boolean
  inputBinding:
    prefix: --ignore-missing
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
- id: uncompressed
  doc: 'Uncompressed kmers file [Default: gzipped]'
  type: boolean
  inputBinding:
    prefix: --uncompressed
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
outputs: []
cwlVersion: v1.1
baseCommand:
- enet_predict_pyseer
