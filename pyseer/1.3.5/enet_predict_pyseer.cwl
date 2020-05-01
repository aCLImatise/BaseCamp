#!/usr/bin/env cwl-runner

baseCommand:
- enet_predict_pyseer
class: CommandLineTool
cwlVersion: v1.0
id: enet_predict_pyseer
inputs:
- doc: Name of fitted model pickle file (.pkl)
  id: model
  inputBinding:
    position: 0
  type: string
- doc: File with samples to predict
  id: samples
  inputBinding:
    position: 1
  type: string
- doc: Threshold to pick binary predictions
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: Custom clusters to use as lineages to report stratified accuracy
  id: lineage_clusters
  inputBinding:
    prefix: --lineage-clusters
  type: string
- doc: Pheno file with known phenotypes to calculate accuracy
  id: true_values
  inputBinding:
    prefix: --true-values
  type: string
- doc: Treat missing values as REF/0 rather than using the mean AF
  id: ignore_missing
  inputBinding:
    prefix: --ignore-missing
  type: boolean
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
- doc: 'Uncompressed kmers file [Default: gzipped]'
  id: uncompressed
  inputBinding:
    prefix: --uncompressed
  type: boolean
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
