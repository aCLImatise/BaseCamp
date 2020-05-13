class: CommandLineTool
id: munge_sumstats.py.cwl
inputs:
- id: sum_stats
  doc: Input filename.
  type: string
  inputBinding:
    prefix: --sumstats
- id: n
  doc: Sample size If this option is not set, will try to infer the sample size from
    the input file. If the input file contains a sample size column, and this flag
    is set, the argument to this flag has priority.
  type: string
  inputBinding:
    prefix: --N
- id: n_cas
  doc: Number of cases. If this option is not set, will try to infer the number of
    cases from the input file. If the input file contains a number of cases column,
    and this flag is set, the argument to this flag has priority.
  type: string
  inputBinding:
    prefix: --N-cas
- id: n_con
  doc: Number of controls. If this option is not set, will try to infer the number
    of controls from the input file. If the input file contains a number of controls
    column, and this flag is set, the argument to this flag has priority.
  type: string
  inputBinding:
    prefix: --N-con
- id: out
  doc: Output filename prefix.
  type: string
  inputBinding:
    prefix: --out
- id: info_min
  doc: Minimum INFO score.
  type: string
  inputBinding:
    prefix: --info-min
- id: maf_min
  doc: Minimum MAF.
  type: string
  inputBinding:
    prefix: --maf-min
- id: dane_r
  doc: Use this flag to parse Stephan Ripke's daner* file format.
  type: boolean
  inputBinding:
    prefix: --daner
- id: dane_r_n
  doc: Use this flag to parse more recent daner* formatted files, which include sample
    size column 'Nca' and 'Nco'.
  type: boolean
  inputBinding:
    prefix: --daner-n
- id: no_alleles
  doc: Don't require alleles. Useful if only unsigned summary statistics are available
    and the goal is h2 / partitioned h2 estimation rather than rg estimation.
  type: boolean
  inputBinding:
    prefix: --no-alleles
- id: merge_alleles
  doc: 'Same as --merge, except the file should have three columns: SNP, A1, A2, and
    all alleles will be matched to the --merge-alleles file alleles.'
  type: string
  inputBinding:
    prefix: --merge-alleles
- id: n_min
  doc: Minimum N (sample size). Default is (90th percentile N) / 2.
  type: string
  inputBinding:
    prefix: --n-min
- id: chunksize
  doc: Chunksize.
  type: string
  inputBinding:
    prefix: --chunksize
- id: snp
  doc: 'Name of SNP column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --snp
- id: n_col
  doc: 'Name of N column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --N-col
- id: n_cas_col
  doc: 'Name of N column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --N-cas-col
- id: n_con_col
  doc: 'Name of N column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --N-con-col
- id: a1
  doc: 'Name of A1 column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --a1
- id: a2
  doc: 'Name of A2 column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --a2
- id: p
  doc: 'Name of p-value column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --p
- id: frq
  doc: 'Name of FRQ or MAF column (if not a name that ldsc understands). NB: case
    insensitive.'
  type: string
  inputBinding:
    prefix: --frq
- id: signed_sum_stats
  doc: 'Name of signed sumstat column, comma null value (e.g., Z,0 or OR,1). NB: case
    insensitive.'
  type: string
  inputBinding:
    prefix: --signed-sumstats
- id: info
  doc: 'Name of INFO column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --info
- id: info_list
  doc: 'Comma-separated list of INFO columns. Will filter on the mean. NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --info-list
- id: n_study
  doc: 'Name of NSTUDY column (if not a name that ldsc understands). NB: case insensitive.'
  type: string
  inputBinding:
    prefix: --nstudy
- id: n_study_min
  doc: 'Minimum # of studies. Default is to remove everything below the max, unless
    there is an N column, in which case do nothing.'
  type: string
  inputBinding:
    prefix: --nstudy-min
- id: ignore
  doc: Comma-separated list of column names to ignore.
  type: string
  inputBinding:
    prefix: --ignore
- id: a1_inc
  doc: A1 is the increasing allele.
  type: boolean
  inputBinding:
    prefix: --a1-inc
- id: keep_maf
  doc: Keep the MAF column (if one exists).
  type: boolean
  inputBinding:
    prefix: --keep-maf
outputs: []
cwlVersion: v1.1
baseCommand:
- munge_sumstats.py
