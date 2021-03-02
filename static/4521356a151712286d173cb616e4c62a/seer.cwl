class: CommandLineTool
id: seer.cwl
inputs:
- id: in_arg_dsm_kmer
  doc: '[ --kmers ] arg       dsm kmer output file'
  type: File?
  inputBinding:
    prefix: -k
- id: in__arg_metadata
  doc: '[ --pheno ] arg       .pheno metadata'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_struct
  doc: mds values from kmds
  type: string?
  inputBinding:
    prefix: --struct
- id: in_co_var_file
  doc: file containing covariates
  type: File?
  inputBinding:
    prefix: --covar_file
- id: in_co_var_list
  doc: "list of columns covariates to use. Format is 1,2q,3\n(use q for quantitative)"
  type: long?
  inputBinding:
    prefix: --covar_list
- id: in_threads
  doc: '(=1)       number of threads. Suggested: 8'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_filtering
  doc: "turn off all filtering and perform tests on all\nkmers input"
  type: boolean?
  inputBinding:
    prefix: --no_filtering
- id: in_max_length
  doc: (=100)  maximum kmer length
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_maf
  doc: (=0.01)        minimum kmer frequency
  type: double?
  inputBinding:
    prefix: --maf
- id: in_min_words
  doc: minimum kmer occurences. Overrides --maf
  type: string?
  inputBinding:
    prefix: --min_words
- id: in_chisq
  doc: "(=10e-5)     p-value threshold for initial chi squared test. Set\nto 1 to\
    \ show all"
  type: double?
  inputBinding:
    prefix: --chisq
- id: in_pval
  doc: "(=10e-8)      p-value threshold for final logistic test. Set to 1\nto show\
    \ all"
  type: double?
  inputBinding:
    prefix: --pval
- id: in_print_samples
  doc: print lists of samples significant kmers were found
  type: boolean?
  inputBinding:
    prefix: --print_samples
- id: in_in
  doc: --version                prints version and exits
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_dsm_kmer
  doc: '[ --kmers ] arg       dsm kmer output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_dsm_kmer)
hints: []
cwlVersion: v1.1
baseCommand:
- seer
