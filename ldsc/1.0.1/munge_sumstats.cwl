#!/usr/bin/env cwl-runner

baseCommand:
- munge_sumstats.py
class: CommandLineTool
cwlVersion: v1.0
id: munge_sumstats.py
inputs:
- doc: Input filename.
  id: sum_stats
  inputBinding:
    prefix: --sumstats
  type: string
- doc: Sample size If this option is not set, will try to infer the sample size from
    the input file. If the input file contains a sample size column, and this flag
    is set, the argument to this flag has priority.
  id: n
  inputBinding:
    prefix: --N
  type: string
- doc: Number of cases. If this option is not set, will try to infer the number of
    cases from the input file. If the input file contains a number of cases column,
    and this flag is set, the argument to this flag has priority.
  id: n_cas
  inputBinding:
    prefix: --N-cas
  type: string
- doc: Number of controls. If this option is not set, will try to infer the number
    of controls from the input file. If the input file contains a number of controls
    column, and this flag is set, the argument to this flag has priority.
  id: n_con
  inputBinding:
    prefix: --N-con
  type: string
- doc: Output filename prefix.
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: Minimum INFO score.
  id: info_min
  inputBinding:
    prefix: --info-min
  type: string
- doc: Minimum MAF.
  id: maf_min
  inputBinding:
    prefix: --maf-min
  type: string
- doc: Use this flag to parse Stephan Ripke's daner* file format.
  id: dane_r
  inputBinding:
    prefix: --daner
  type: boolean
- doc: Use this flag to parse more recent daner* formatted files, which include sample
    size column 'Nca' and 'Nco'.
  id: dane_r_n
  inputBinding:
    prefix: --daner-n
  type: boolean
- doc: Don't require alleles. Useful if only unsigned summary statistics are available
    and the goal is h2 / partitioned h2 estimation rather than rg estimation.
  id: no_alleles
  inputBinding:
    prefix: --no-alleles
  type: boolean
- doc: 'Same as --merge, except the file should have three columns: SNP, A1, A2, and
    all alleles will be matched to the --merge-alleles file alleles.'
  id: merge_alleles
  inputBinding:
    prefix: --merge-alleles
  type: string
- doc: Minimum N (sample size). Default is (90th percentile N) / 2.
  id: n_min
  inputBinding:
    prefix: --n-min
  type: string
- doc: Chunksize.
  id: chunksize
  inputBinding:
    prefix: --chunksize
  type: string
- doc: 'Name of SNP column (if not a name that ldsc understands). NB: case insensitive.'
  id: snp
  inputBinding:
    prefix: --snp
  type: string
- doc: 'Name of N column (if not a name that ldsc understands). NB: case insensitive.'
  id: n_col
  inputBinding:
    prefix: --N-col
  type: string
- doc: 'Name of N column (if not a name that ldsc understands). NB: case insensitive.'
  id: n_cas_col
  inputBinding:
    prefix: --N-cas-col
  type: string
- doc: 'Name of N column (if not a name that ldsc understands). NB: case insensitive.'
  id: n_con_col
  inputBinding:
    prefix: --N-con-col
  type: string
- doc: 'Name of A1 column (if not a name that ldsc understands). NB: case insensitive.'
  id: a1
  inputBinding:
    prefix: --a1
  type: string
- doc: 'Name of A2 column (if not a name that ldsc understands). NB: case insensitive.'
  id: a2
  inputBinding:
    prefix: --a2
  type: string
- doc: 'Name of p-value column (if not a name that ldsc understands). NB: case insensitive.'
  id: p
  inputBinding:
    prefix: --p
  type: string
- doc: 'Name of FRQ or MAF column (if not a name that ldsc understands). NB: case
    insensitive.'
  id: frq
  inputBinding:
    prefix: --frq
  type: string
- doc: 'Name of signed sumstat column, comma null value (e.g., Z,0 or OR,1). NB: case
    insensitive.'
  id: signed_sum_stats
  inputBinding:
    prefix: --signed-sumstats
  type: string
- doc: 'Name of INFO column (if not a name that ldsc understands). NB: case insensitive.'
  id: info
  inputBinding:
    prefix: --info
  type: string
- doc: 'Comma-separated list of INFO columns. Will filter on the mean. NB: case insensitive.'
  id: info_list
  inputBinding:
    prefix: --info-list
  type: string
- doc: 'Name of NSTUDY column (if not a name that ldsc understands). NB: case insensitive.'
  id: n_study
  inputBinding:
    prefix: --nstudy
  type: string
- doc: 'Minimum # of studies. Default is to remove everything below the max, unless
    there is an N column, in which case do nothing.'
  id: n_study_min
  inputBinding:
    prefix: --nstudy-min
  type: string
- doc: Comma-separated list of column names to ignore.
  id: ignore
  inputBinding:
    prefix: --ignore
  type: string
- doc: A1 is the increasing allele.
  id: a1_inc
  inputBinding:
    prefix: --a1-inc
  type: boolean
- doc: Keep the MAF column (if one exists).
  id: keep_maf
  inputBinding:
    prefix: --keep-maf
  type: boolean
