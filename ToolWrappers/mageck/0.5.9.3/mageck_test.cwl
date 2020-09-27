class: CommandLineTool
id: mageck_test.cwl
inputs:
- id: in_count_table
  doc: "Provide a tab-separated count table instead of sam\nfiles. Each line in the\
    \ table should include sgRNA\nname (1st column), gene name (2nd column) and read\n\
    counts in each sample."
  type: long
  inputBinding:
    prefix: --count-table
- id: in_treatment_id
  doc: "Sample label or sample index (0 as the first sample)\nin the count table as\
    \ treatment experiments, separated\nby comma (,). If sample label is provided,\
    \ the labels\nmust match the labels in the first line of the count\ntable; for\
    \ example, \"HL60.final,KBM7.final\". For\nsample index, \"0,2\" means the 1st\
    \ and 3rd samples are\ntreatment experiments."
  type: long
  inputBinding:
    prefix: --treatment-id
- id: in_day_zero_label
  doc: "Specify the label for control sample (usually day 0 or\nplasmid). For every\
    \ other sample label, the module\nwill treat it as a treatment condition and compare\n\
    with control sample."
  type: long
  inputBinding:
    prefix: --day0-label
- id: in_control_id
  doc: "Sample label or sample index in the count table as\ncontrol experiments, separated\
    \ by comma (,). Default\nis all the samples not specified in treatment\nexperiments."
  type: string
  inputBinding:
    prefix: --control-id
- id: in_paired
  doc: "Paired sample comparisons. In this mode, the number of\nsamples in -t and\
    \ -c must match and have an exactly\nthe same order in terms of samples. For example,\
    \ \"-t\ntreatment_r1,treatment_r2 -c control_r1,control_r2\"."
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_norm_method
  doc: "Method for normalization, including \"none\" (no\nnormalization), \"median\"\
    \ (median normalization,\ndefault), \"total\" (normalization by total read\ncounts),\
    \ \"control\" (normalization by control sgRNAs\nspecified by the --control-sgrna\
    \ option)."
  type: string
  inputBinding:
    prefix: --norm-method
- id: in_gene_test_fdr_threshold
  doc: "p value threshold to determine the alpha value of RRA\nin gene test (-p option\
    \ in RRA), default 0.25."
  type: double
  inputBinding:
    prefix: --gene-test-fdr-threshold
- id: in_adjust_method
  doc: "Method for sgrna-level p-value adjustment, including\nfalse discovery rate\
    \ (fdr), holm's method (holm), or\npounds's method (pounds)."
  type: string
  inputBinding:
    prefix: --adjust-method
- id: in_variance_estimation_samples
  doc: "Sample label or sample index for estimating variances,\nseparated by comma\
    \ (,). See -t/--treatment-id option\nfor specifying samples."
  type: string
  inputBinding:
    prefix: --variance-estimation-samples
- id: in_sort_criteria
  doc: "Sorting criteria, either by negative selection (neg)\nor positive selection\
    \ (pos). Default negative\nselection."
  type: string
  inputBinding:
    prefix: --sort-criteria
- id: in_remove_zero
  doc: "Remove sgRNAs whose mean value is zero in control,\ntreatment, both control/treatment,\
    \ or any\ncontrol/treatment sample. Default: both (remove those\nsgRNAs that are\
    \ zero in both control and treatment\nsamples)."
  type: string
  inputBinding:
    prefix: --remove-zero
- id: in_remove_zero_threshold
  doc: "sgRNA normalized count threshold to be considered\nremoved in the --remove-zero\
    \ option. Default 0."
  type: long
  inputBinding:
    prefix: --remove-zero-threshold
- id: in_pdf_report
  doc: Generate pdf report of the analysis.
  type: boolean
  inputBinding:
    prefix: --pdf-report
- id: in_gene_lfc_method
  doc: "Method to calculate gene log fold changes (LFC) from\nsgRNA LFCs. Available\
    \ methods include the median/mean\nof all sgRNAs (median/mean), or the median/mean\
    \ sgRNAs\nthat are ranked in front of the alpha cutoff in RRA\n(alphamedian/alphamean),\
    \ or the sgRNA that has the\nsecond strongest LFC (secondbest). In the\nalphamedian/alphamean\
    \ case, the number of sgRNAs\ncorrespond to the \"goodsgrna\" column in the output,\n\
    and the gene LFC will be set to 0 if no sgRNA is in\nfront of the alpha cutoff.\
    \ Default median."
  type: string
  inputBinding:
    prefix: --gene-lfc-method
- id: in_output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: File
  inputBinding:
    prefix: --output-prefix
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
- id: in_norm_counts_to_file
  doc: "Write normalized read counts to file ([output-\nprefix].normalized.txt)."
  type: File
  inputBinding:
    prefix: --normcounts-to-file
- id: in_skip_gene
  doc: "Skip genes in the report. By default, \"NA\" or \"na\"\nwill be skipped."
  type: string
  inputBinding:
    prefix: --skip-gene
- id: in_keep_tmp
  doc: Keep intermediate files.
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: in_additional_rra_parameters
  doc: "Additional arguments to run RRA. They will be appended\nto the command line\
    \ for calling RRA."
  type: string
  inputBinding:
    prefix: --additional-rra-parameters
- id: in_cnv_norm
  doc: "A matrix of copy number variation data across cell\nlines to normalize CNV-biased\
    \ sgRNA scores prior to\ngene ranking."
  type: long
  inputBinding:
    prefix: --cnv-norm
- id: in_cell_line
  doc: "The name of the cell line to be used for copy number\nvariation normalization."
  type: long
  inputBinding:
    prefix: --cell-line
- id: in_cnv_est
  doc: "Estimate CNV profiles from screening data. A BED file\nwith gene positions\
    \ are required as input. The CNVs of\nthese genes are to be estimated and used\
    \ for copy\nnumber bias correction.\n"
  type: long
  inputBinding:
    prefix: --cnv-est
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: File
  outputBinding:
    glob: $(inputs.in_output_prefix)
- id: out_norm_counts_to_file
  doc: "Write normalized read counts to file ([output-\nprefix].normalized.txt)."
  type: File
  outputBinding:
    glob: $(inputs.in_norm_counts_to_file)
cwlVersion: v1.1
baseCommand:
- mageck
- test
