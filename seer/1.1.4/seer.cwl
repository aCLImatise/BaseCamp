class: CommandLineTool
id: seer.cwl
inputs:
- id: k
  doc: '[ --kmers ] arg       dsm kmer output file'
  type: boolean
  inputBinding:
    prefix: -k
- id: p
  doc: '[ --pheno ] arg       .pheno metadata'
  type: boolean
  inputBinding:
    prefix: -p
- id: struct
  doc: mds values from kmds
  type: string
  inputBinding:
    prefix: --struct
- id: co_var_file
  doc: file containing covariates
  type: string
  inputBinding:
    prefix: --covar_file
- id: co_var_list
  doc: list of columns covariates to use. Format is 1,2q,3  (use q for quantitative)
  type: string
  inputBinding:
    prefix: --covar_list
- id: threads
  doc: '(=1)       number of threads. Suggested: 8'
  type: string
  inputBinding:
    prefix: --threads
- id: no_filtering
  doc: turn off all filtering and perform tests on all  kmers input
  type: boolean
  inputBinding:
    prefix: --no_filtering
- id: max_length
  doc: (=100)  maximum kmer length
  type: string
  inputBinding:
    prefix: --max_length
- id: maf
  doc: (=0.01)        minimum kmer frequency
  type: string
  inputBinding:
    prefix: --maf
- id: min_words
  doc: minimum kmer occurences. Overrides --maf
  type: string
  inputBinding:
    prefix: --min_words
- id: chisq
  doc: (=10e-5)     p-value threshold for initial chi squared test. Set  to 1 to show
    all
  type: string
  inputBinding:
    prefix: --chisq
- id: pval
  doc: (=10e-8)      p-value threshold for final logistic test. Set to 1  to show
    all
  type: string
  inputBinding:
    prefix: --pval
- id: print_samples
  doc: print lists of samples significant kmers were found  in
  type: boolean
  inputBinding:
    prefix: --print_samples
outputs: []
cwlVersion: v1.1
baseCommand:
- seer
