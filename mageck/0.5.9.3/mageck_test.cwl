class: CommandLineTool
id: mageck_test.cwl
inputs:
- id: count_table
  doc: Provide a tab-separated count table instead of sam files. Each line in the
    table should include sgRNA name (1st column), gene name (2nd column) and read
    counts in each sample.
  type: string
  inputBinding:
    prefix: --count-table
- id: treatment_id
  doc: Sample label or sample index (0 as the first sample) in the count table as
    treatment experiments, separated by comma (,). If sample label is provided, the
    labels must match the labels in the first line of the count table; for example,
    "HL60.final,KBM7.final". For sample index, "0,2" means the 1st and 3rd samples
    are treatment experiments.
  type: string
  inputBinding:
    prefix: --treatment-id
- id: day0_label
  doc: Specify the label for control sample (usually day 0 or plasmid). For every
    other sample label, the module will treat it as a treatment condition and compare
    with control sample.
  type: string
  inputBinding:
    prefix: --day0-label
- id: control_id
  doc: Sample label or sample index in the count table as control experiments, separated
    by comma (,). Default is all the samples not specified in treatment experiments.
  type: string
  inputBinding:
    prefix: --control-id
- id: paired
  doc: Paired sample comparisons. In this mode, the number of samples in -t and -c
    must match and have an exactly the same order in terms of samples. For example,
    "-t treatment_r1,treatment_r2 -c control_r1,control_r2".
  type: boolean
  inputBinding:
    prefix: --paired
- id: norm_method
  doc: Method for normalization, including "none" (no normalization), "median" (median
    normalization, default), "total" (normalization by total read counts), "control"
    (normalization by control sgRNAs specified by the --control-sgrna option).
  type: string
  inputBinding:
    prefix: --norm-method
- id: gene_test_fdr_threshold
  doc: p value threshold to determine the alpha value of RRA in gene test (-p option
    in RRA), default 0.25.
  type: string
  inputBinding:
    prefix: --gene-test-fdr-threshold
- id: adjust_method
  doc: Method for sgrna-level p-value adjustment, including false discovery rate (fdr),
    holm's method (holm), or pounds's method (pounds).
  type: string
  inputBinding:
    prefix: --adjust-method
- id: variance_estimation_samples
  doc: Sample label or sample index for estimating variances, separated by comma (,).
    See -t/--treatment-id option for specifying samples.
  type: string
  inputBinding:
    prefix: --variance-estimation-samples
- id: sort_criteria
  doc: Sorting criteria, either by negative selection (neg) or positive selection
    (pos). Default negative selection.
  type: string
  inputBinding:
    prefix: --sort-criteria
- id: remove_zero
  doc: 'Remove sgRNAs whose mean value is zero in control, treatment, both control/treatment,
    or any control/treatment sample. Default: both (remove those sgRNAs that are zero
    in both control and treatment samples).'
  type: string
  inputBinding:
    prefix: --remove-zero
- id: remove_zero_threshold
  doc: sgRNA normalized count threshold to be considered removed in the --remove-zero
    option. Default 0.
  type: string
  inputBinding:
    prefix: --remove-zero-threshold
- id: pdf_report
  doc: Generate pdf report of the analysis.
  type: boolean
  inputBinding:
    prefix: --pdf-report
- id: gene_lfc_method
  doc: Method to calculate gene log fold changes (LFC) from sgRNA LFCs. Available
    methods include the median/mean of all sgRNAs (median/mean), or the median/mean
    sgRNAs that are ranked in front of the alpha cutoff in RRA (alphamedian/alphamean),
    or the sgRNA that has the second strongest LFC (secondbest). In the alphamedian/alphamean
    case, the number of sgRNAs correspond to the "goodsgrna" column in the output,
    and the gene LFC will be set to 0 if no sgRNA is in front of the alpha cutoff.
    Default median.
  type: string
  inputBinding:
    prefix: --gene-lfc-method
- id: output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: string
  inputBinding:
    prefix: --output-prefix
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
- id: norm_counts_to_file
  doc: Write normalized read counts to file ([output- prefix].normalized.txt).
  type: boolean
  inputBinding:
    prefix: --normcounts-to-file
- id: skip_gene
  doc: Skip genes in the report. By default, "NA" or "na" will be skipped.
  type: string
  inputBinding:
    prefix: --skip-gene
- id: keep_tmp
  doc: Keep intermediate files.
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: additional_rra_parameters
  doc: Additional arguments to run RRA. They will be appended to the command line
    for calling RRA.
  type: string
  inputBinding:
    prefix: --additional-rra-parameters
- id: cnv_norm
  doc: A matrix of copy number variation data across cell lines to normalize CNV-biased
    sgRNA scores prior to gene ranking.
  type: string
  inputBinding:
    prefix: --cnv-norm
- id: cell_line
  doc: The name of the cell line to be used for copy number variation normalization.
  type: string
  inputBinding:
    prefix: --cell-line
- id: cnv_est
  doc: Estimate CNV profiles from screening data. A BED file with gene positions are
    required as input. The CNVs of these genes are to be estimated and used for copy
    number bias correction.
  type: string
  inputBinding:
    prefix: --cnv-est
outputs: []
cwlVersion: v1.1
baseCommand:
- mageck
- test
