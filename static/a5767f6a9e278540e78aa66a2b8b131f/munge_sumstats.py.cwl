class: CommandLineTool
id: munge_sumstats.py.cwl
inputs:
- id: in_sum_stats
  doc: Input filename.
  type: File?
  inputBinding:
    prefix: --sumstats
- id: in_sample_size_option
  doc: "Sample size If this option is not set, will try to\ninfer the sample size\
    \ from the input file. If the\ninput file contains a sample size column, and this\n\
    flag is set, the argument to this flag has priority."
  type: long?
  inputBinding:
    prefix: --N
- id: in_n_cas
  doc: "Number of cases. If this option is not set, will try\nto infer the number\
    \ of cases from the input file. If\nthe input file contains a number of cases\
    \ column, and\nthis flag is set, the argument to this flag has\npriority."
  type: long?
  inputBinding:
    prefix: --N-cas
- id: in_n_con
  doc: "Number of controls. If this option is not set, will\ntry to infer the number\
    \ of controls from the input\nfile. If the input file contains a number of controls\n\
    column, and this flag is set, the argument to this\nflag has priority."
  type: long?
  inputBinding:
    prefix: --N-con
- id: in_out
  doc: Output filename prefix.
  type: File?
  inputBinding:
    prefix: --out
- id: in_info_min
  doc: Minimum INFO score.
  type: long?
  inputBinding:
    prefix: --info-min
- id: in_maf_min
  doc: Minimum MAF.
  type: long?
  inputBinding:
    prefix: --maf-min
- id: in_dane_r
  doc: Use this flag to parse Stephan Ripke's daner* file
  type: boolean?
  inputBinding:
    prefix: --daner
- id: in_no_alleles
  doc: "Don't require alleles. Useful if only unsigned summary\nstatistics are available\
    \ and the goal is h2 /\npartitioned h2 estimation rather than rg estimation."
  type: boolean?
  inputBinding:
    prefix: --no-alleles
- id: in_merge_alleles
  doc: "Same as --merge, except the file should have three\ncolumns: SNP, A1, A2,\
    \ and all alleles will be matched\nto the --merge-alleles file alleles."
  type: File?
  inputBinding:
    prefix: --merge-alleles
- id: in_n_min
  doc: "Minimum N (sample size). Default is (90th percentile\nN) / 2."
  type: long?
  inputBinding:
    prefix: --n-min
- id: in_n_col
  doc: "Name of N column (if not a name that ldsc\nunderstands). NB: case insensitive."
  type: string?
  inputBinding:
    prefix: --N-col
- id: in_n_cas_col
  doc: "Name of N column (if not a name that ldsc\nunderstands). NB: case insensitive."
  type: string?
  inputBinding:
    prefix: --N-cas-col
- id: in_n_con_col
  doc: "Name of N column (if not a name that ldsc\nunderstands). NB: case insensitive."
  type: string?
  inputBinding:
    prefix: --N-con-col
- id: in_a_one
  doc: "Name of A1 column (if not a name that ldsc\nunderstands). NB: case insensitive."
  type: long?
  inputBinding:
    prefix: --a1
- id: in_a_two
  doc: "Name of A2 column (if not a name that ldsc\nunderstands). NB: case insensitive."
  type: long?
  inputBinding:
    prefix: --a2
- id: in_name_pvalue_name_ldscunderstands_nb_case
  doc: "Name of p-value column (if not a name that ldsc\nunderstands). NB: case insensitive."
  type: string?
  inputBinding:
    prefix: --p
- id: in_frq
  doc: "Name of FRQ or MAF column (if not a name that ldsc\nunderstands). NB: case\
    \ insensitive."
  type: string?
  inputBinding:
    prefix: --frq
- id: in_signed_sum_stats
  doc: "Name of signed sumstat column, comma null value (e.g.,\nZ,0 or OR,1). NB:\
    \ case insensitive."
  type: long?
  inputBinding:
    prefix: --signed-sumstats
- id: in_info
  doc: "Name of INFO column (if not a name that ldsc\nunderstands). NB: case insensitive."
  type: string?
  inputBinding:
    prefix: --info
- id: in_info_list
  doc: "Comma-separated list of INFO columns. Will filter on\nthe mean. NB: case insensitive."
  type: string?
  inputBinding:
    prefix: --info-list
- id: in_n_study
  doc: "Name of NSTUDY column (if not a name that ldsc\nunderstands). NB: case insensitive."
  type: string?
  inputBinding:
    prefix: --nstudy
- id: in_n_study_min
  doc: "Minimum # of studies. Default is to remove everything\nbelow the max, unless\
    \ there is an N column, in which\ncase do nothing."
  type: long?
  inputBinding:
    prefix: --nstudy-min
- id: in_ignore
  doc: Comma-separated list of column names to ignore.
  type: string?
  inputBinding:
    prefix: --ignore
- id: in_a_one_inc
  doc: A1 is the increasing allele.
  type: boolean?
  inputBinding:
    prefix: --a1-inc
- id: in_keep_maf
  doc: Keep the MAF column (if one exists).
  type: boolean?
  inputBinding:
    prefix: --keep-maf
- id: in_format_dot
  doc: --daner-n             Use this flag to parse more recent daner* formatted
  type: string
  inputBinding:
    position: 0
- id: in_chunksize_dot
  doc: --snp SNP             Name of SNP column (if not a name that ldsc
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output filename prefix.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- munge_sumstats.py
