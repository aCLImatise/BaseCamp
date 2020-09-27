class: CommandLineTool
id: mageck_mle.cwl
inputs:
- id: in_count_table
  doc: "Provide a tab-separated count table. Each line in the\ntable should include\
    \ sgRNA name (1st column), target\ngene (2nd column) and read counts in each sample."
  type: long
  inputBinding:
    prefix: --count-table
- id: in_design_matrix
  doc: "Provide a design matrix, either a file name or a\nquoted string of the design\
    \ matrix. For example,\n\"1,1;1,0\". The row of the design matrix must match the\n\
    order of the samples in the count table (if --include-\nsamples is not specified),\
    \ or the order of the samples\nby the --include-samples option."
  type: File
  inputBinding:
    prefix: --design-matrix
- id: in_day_zero_label
  doc: "Specify the label for control sample (usually day 0 or\nplasmid). For every\
    \ other sample label, the MLE module\nwill treat it as a single condition and\
    \ generate an\ncorresponding design matrix."
  type: long
  inputBinding:
    prefix: --day0-label
- id: in_output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: File
  inputBinding:
    prefix: --output-prefix
- id: in_include_samples
  doc: "Specify the sample labels if the design matrix is not\ngiven by file in the\
    \ --design-matrix option. Sample\nlabels are separated by \",\", and must match\
    \ the labels\nin the count table."
  type: File
  inputBinding:
    prefix: --include-samples
- id: in_beta_labels
  doc: "Specify the labels of the variables (i.e., beta), if\nthe design matrix is\
    \ not given by file in the\n--design-matrix option. Should be separated by \"\
    ,\",\nand the number of labels must equal to (# columns of\ndesign matrix), including\
    \ baseline labels. Default\nvalue: \"bata_0,beta_1,beta_2,...\"."
  type: long
  inputBinding:
    prefix: --beta-labels
- id: in_control_sg_rna
  doc: "A list of control sgRNAs for normalization and for\ngenerating the null distribution\
    \ of RRA."
  type: string
  inputBinding:
    prefix: --control-sgrna
- id: in_control_gene
  doc: "A list of genes whose sgRNAs are used as control\nsgRNAs for normalization\
    \ and for generating the null\ndistribution of RRA."
  type: string
  inputBinding:
    prefix: --control-gene
- id: in_cnv_norm
  doc: "A matrix of copy number variation data across cell\nlines to normalize CNV-biased\
    \ sgRNA scores prior to\ngene ranking."
  type: long
  inputBinding:
    prefix: --cnv-norm
- id: in_cnv_est
  doc: "Estimate CNV profiles from screening data. A BED file\nwith gene positions\
    \ are required as input. The CNVs of\nthese genes are to be estimated and used\
    \ for copy\nnumber bias correction."
  type: long
  inputBinding:
    prefix: --cnv-est
- id: in_debug
  doc: Debug mode to output detailed information of the
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_norm_method
  doc: "Method for normalization, including \"none\" (no\nnormalization), \"median\"\
    \ (median normalization,\ndefault), \"total\" (normalization by total read\ncounts),\
    \ \"control\" (normalization by control sgRNAs\nspecified by the --control-sgrna\
    \ option)."
  type: string
  inputBinding:
    prefix: --norm-method
- id: in_genes_var_modeling
  doc: "The number of genes for mean-variance modeling.\nDefault 0."
  type: long
  inputBinding:
    prefix: --genes-varmodeling
- id: in_permutation_round
  doc: "The rounds for permutation (interger). The permutation\ntime is (# genes)*x\
    \ for x rounds of permutation.\nSuggested value: 10 (may take longer time). Default\
    \ 2."
  type: long
  inputBinding:
    prefix: --permutation-round
- id: in_no_permutation_by_group
  doc: "By default, gene permutation is performed separately,\nby their number of\
    \ sgRNAs. Turning this option will\nperform permutation on all genes together.\
    \ This makes\nthe program faster, but the p value estimation is\naccurate only\
    \ if the number of sgRNAs per gene is\napproximately the same."
  type: boolean
  inputBinding:
    prefix: --no-permutation-by-group
- id: in_max_sg_rna_per_gene_permutation
  doc: "Do not calculate beta scores or p vales if the number\nof sgRNAs per gene\
    \ is greater than this number. This\nwill save a lot of time if some isolated\
    \ regions are\ntargeted by a large number of sgRNAs (usually\nhundreds). Must\
    \ be an integer. Default 100."
  type: long
  inputBinding:
    prefix: --max-sgrnapergene-permutation
- id: in_remove_outliers
  doc: "Try to remove outliers. Turning this option on will\nslow the algorithm."
  type: boolean
  inputBinding:
    prefix: --remove-outliers
- id: in_threads
  doc: "Using multiple threads to run the algorithm. Default\nusing only 1 thread."
  type: long
  inputBinding:
    prefix: --threads
- id: in_adjust_method
  doc: "Method for sgrna-level p-value adjustment, including\nfalse discovery rate\
    \ (fdr), holm's method (holm), or\npounds's method (pounds)."
  type: string
  inputBinding:
    prefix: --adjust-method
- id: in_sg_rna_efficiency
  doc: "An optional file of sgRNA efficiency prediction. The\nefficiency prediction\
    \ will be used as an initial guess\nof the probability an sgRNA is efficient.\
    \ Must contain\nat least two columns, one containing sgRNA ID, the\nother containing\
    \ sgRNA efficiency prediction."
  type: File
  inputBinding:
    prefix: --sgrna-efficiency
- id: in_sg_rna_eff_name_column
  doc: "The sgRNA ID column in sgRNA efficiency prediction\nfile (specified by the\
    \ --sgrna-efficiency option).\nDefault is 0 (the first column)."
  type: File
  inputBinding:
    prefix: --sgrna-eff-name-column
- id: in_sg_rna_eff_score_column
  doc: "The sgRNA efficiency prediction column in sgRNA\nefficiency prediction file\
    \ (specified by the --sgrna-\nefficiency option). Default is 1 (the second column)."
  type: File
  inputBinding:
    prefix: --sgrna-eff-score-column
- id: in_update_efficiency
  doc: Iteratively update sgRNA efficiency during EM
  type: boolean
  inputBinding:
    prefix: --update-efficiency
- id: in_bayes
  doc: Use the experimental Bayes module to estimate gene
  type: boolean
  inputBinding:
    prefix: --bayes
- id: in_ppi_weighting
  doc: "The weighting used to calculate PPI prior. If not\nprovided, iterations will\
    \ be used."
  type: string
  inputBinding:
    prefix: --PPI-weighting
- id: in_negative_control
  doc: "The gene name of negative controls. The corresponding\nsgRNA will be viewed\
    \ independently.\n"
  type: string
  inputBinding:
    prefix: --negative-control
- id: in_running_dot
  doc: --debug-gene DEBUG_GENE
  type: string
  inputBinding:
    position: 0
- id: in_iteration_dot
  doc: 'Optional arguments for the Bayes estimation of gene essentiality (experimental):'
  type: string
  inputBinding:
    position: 0
- id: in_essentiality
  doc: -p, --PPI-prior       Specify whether you want to incorporate PPI as prior
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: File
  outputBinding:
    glob: $(inputs.in_output_prefix)
cwlVersion: v1.1
baseCommand:
- mageck
- mle
