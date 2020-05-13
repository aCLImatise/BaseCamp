class: CommandLineTool
id: mageck_mle.cwl
inputs:
- id: count_table
  doc: Provide a tab-separated count table. Each line in the table should include
    sgRNA name (1st column), target gene (2nd column) and read counts in each sample.
  type: string
  inputBinding:
    prefix: --count-table
- id: design_matrix
  doc: Provide a design matrix, either a file name or a quoted string of the design
    matrix. For example, "1,1;1,0". The row of the design matrix must match the order
    of the samples in the count table (if --include- samples is not specified), or
    the order of the samples by the --include-samples option.
  type: string
  inputBinding:
    prefix: --design-matrix
- id: day0_label
  doc: Specify the label for control sample (usually day 0 or plasmid). For every
    other sample label, the MLE module will treat it as a single condition and generate
    an corresponding design matrix.
  type: string
  inputBinding:
    prefix: --day0-label
- id: output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: string
  inputBinding:
    prefix: --output-prefix
- id: include_samples
  doc: Specify the sample labels if the design matrix is not given by file in the
    --design-matrix option. Sample labels are separated by ",", and must match the
    labels in the count table.
  type: string
  inputBinding:
    prefix: --include-samples
- id: beta_labels
  doc: 'Specify the labels of the variables (i.e., beta), if the design matrix is
    not given by file in the --design-matrix option. Should be separated by ",", and
    the number of labels must equal to (# columns of design matrix), including baseline
    labels. Default value: "bata_0,beta_1,beta_2,...".'
  type: string
  inputBinding:
    prefix: --beta-labels
- id: control_sg_rna
  doc: A list of control sgRNAs for normalization and for generating the null distribution
    of RRA.
  type: string
  inputBinding:
    prefix: --control-sgrna
- id: control_gene
  doc: A list of genes whose sgRNAs are used as control sgRNAs for normalization and
    for generating the null distribution of RRA.
  type: string
  inputBinding:
    prefix: --control-gene
- id: cnv_norm
  doc: A matrix of copy number variation data across cell lines to normalize CNV-biased
    sgRNA scores prior to gene ranking.
  type: string
  inputBinding:
    prefix: --cnv-norm
- id: cnv_est
  doc: Estimate CNV profiles from screening data. A BED file with gene positions are
    required as input. The CNVs of these genes are to be estimated and used for copy
    number bias correction.
  type: string
  inputBinding:
    prefix: --cnv-est
- id: debug
  doc: Debug mode to output detailed information of the running.
  type: boolean
  inputBinding:
    prefix: --debug
- id: debug_gene
  doc: Debug mode to only run one gene with specified ID.
  type: string
  inputBinding:
    prefix: --debug-gene
- id: norm_method
  doc: Method for normalization, including "none" (no normalization), "median" (median
    normalization, default), "total" (normalization by total read counts), "control"
    (normalization by control sgRNAs specified by the --control-sgrna option).
  type: string
  inputBinding:
    prefix: --norm-method
- id: genes_var_modeling
  doc: The number of genes for mean-variance modeling. Default 0.
  type: string
  inputBinding:
    prefix: --genes-varmodeling
- id: permutation_round
  doc: 'The rounds for permutation (interger). The permutation time is (# genes)*x
    for x rounds of permutation. Suggested value: 10 (may take longer time). Default
    2.'
  type: string
  inputBinding:
    prefix: --permutation-round
- id: no_permutation_by_group
  doc: By default, gene permutation is performed separately, by their number of sgRNAs.
    Turning this option will perform permutation on all genes together. This makes
    the program faster, but the p value estimation is accurate only if the number
    of sgRNAs per gene is approximately the same.
  type: boolean
  inputBinding:
    prefix: --no-permutation-by-group
- id: max_sg_rna_per_gene_permutation
  doc: Do not calculate beta scores or p vales if the number of sgRNAs per gene is
    greater than this number. This will save a lot of time if some isolated regions
    are targeted by a large number of sgRNAs (usually hundreds). Must be an integer.
    Default 100.
  type: long
  inputBinding:
    prefix: --max-sgrnapergene-permutation
- id: remove_outliers
  doc: Try to remove outliers. Turning this option on will slow the algorithm.
  type: boolean
  inputBinding:
    prefix: --remove-outliers
- id: threads
  doc: Using multiple threads to run the algorithm. Default using only 1 thread.
  type: string
  inputBinding:
    prefix: --threads
- id: adjust_method
  doc: Method for sgrna-level p-value adjustment, including false discovery rate (fdr),
    holm's method (holm), or pounds's method (pounds).
  type: string
  inputBinding:
    prefix: --adjust-method
- id: sg_rna_efficiency
  doc: An optional file of sgRNA efficiency prediction. The efficiency prediction
    will be used as an initial guess of the probability an sgRNA is efficient. Must
    contain at least two columns, one containing sgRNA ID, the other containing sgRNA
    efficiency prediction.
  type: string
  inputBinding:
    prefix: --sgrna-efficiency
- id: sg_rna_eff_name_column
  doc: The sgRNA ID column in sgRNA efficiency prediction file (specified by the --sgrna-efficiency
    option). Default is 0 (the first column).
  type: string
  inputBinding:
    prefix: --sgrna-eff-name-column
- id: sg_rna_eff_score_column
  doc: The sgRNA efficiency prediction column in sgRNA efficiency prediction file
    (specified by the --sgrna- efficiency option). Default is 1 (the second column).
  type: string
  inputBinding:
    prefix: --sgrna-eff-score-column
- id: update_efficiency
  doc: Iteratively update sgRNA efficiency during EM iteration.
  type: boolean
  inputBinding:
    prefix: --update-efficiency
- id: bayes
  doc: Use the experimental Bayes module to estimate gene essentiality
  type: boolean
  inputBinding:
    prefix: --bayes
- id: ppi_prior
  doc: Specify whether you want to incorporate PPI as prior
  type: boolean
  inputBinding:
    prefix: --PPI-prior
- id: ppi_weighting
  doc: The weighting used to calculate PPI prior. If not provided, iterations will
    be used.
  type: string
  inputBinding:
    prefix: --PPI-weighting
- id: negative_control
  doc: The gene name of negative controls. The corresponding sgRNA will be viewed
    independently.
  type: string
  inputBinding:
    prefix: --negative-control
outputs: []
cwlVersion: v1.1
baseCommand:
- mageck
- mle
