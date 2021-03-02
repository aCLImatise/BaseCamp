version 1.0

task MageckTest {
  input {
    Int? count_table
    Int? treatment_id
    Int? day_zero_label
    String? control_id
    Boolean? paired
    String? norm_method
    Float? gene_test_fdr_threshold
    String? adjust_method
    String? variance_estimation_samples
    String? sort_criteria
    String? remove_zero
    Int? remove_zero_threshold
    Boolean? pdf_report
    String? gene_lfc_method
    File? output_prefix
    String? control_sg_rna
    String? control_gene
    File? norm_counts_to_file
    String? skip_gene
    Boolean? keep_tmp
    String? additional_rra_parameters
    Int? cnv_norm
    Int? cell_line
    Int? cnv_est
  }
  command <<<
    mageck test \
      ~{if defined(count_table) then ("--count-table " +  '"' + count_table + '"') else ""} \
      ~{if defined(treatment_id) then ("--treatment-id " +  '"' + treatment_id + '"') else ""} \
      ~{if defined(day_zero_label) then ("--day0-label " +  '"' + day_zero_label + '"') else ""} \
      ~{if defined(control_id) then ("--control-id " +  '"' + control_id + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(norm_method) then ("--norm-method " +  '"' + norm_method + '"') else ""} \
      ~{if defined(gene_test_fdr_threshold) then ("--gene-test-fdr-threshold " +  '"' + gene_test_fdr_threshold + '"') else ""} \
      ~{if defined(adjust_method) then ("--adjust-method " +  '"' + adjust_method + '"') else ""} \
      ~{if defined(variance_estimation_samples) then ("--variance-estimation-samples " +  '"' + variance_estimation_samples + '"') else ""} \
      ~{if defined(sort_criteria) then ("--sort-criteria " +  '"' + sort_criteria + '"') else ""} \
      ~{if defined(remove_zero) then ("--remove-zero " +  '"' + remove_zero + '"') else ""} \
      ~{if defined(remove_zero_threshold) then ("--remove-zero-threshold " +  '"' + remove_zero_threshold + '"') else ""} \
      ~{if (pdf_report) then "--pdf-report" else ""} \
      ~{if defined(gene_lfc_method) then ("--gene-lfc-method " +  '"' + gene_lfc_method + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(control_sg_rna) then ("--control-sgrna " +  '"' + control_sg_rna + '"') else ""} \
      ~{if defined(control_gene) then ("--control-gene " +  '"' + control_gene + '"') else ""} \
      ~{if (norm_counts_to_file) then "--normcounts-to-file" else ""} \
      ~{if defined(skip_gene) then ("--skip-gene " +  '"' + skip_gene + '"') else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if defined(additional_rra_parameters) then ("--additional-rra-parameters " +  '"' + additional_rra_parameters + '"') else ""} \
      ~{if defined(cnv_norm) then ("--cnv-norm " +  '"' + cnv_norm + '"') else ""} \
      ~{if defined(cell_line) then ("--cell-line " +  '"' + cell_line + '"') else ""} \
      ~{if defined(cnv_est) then ("--cnv-est " +  '"' + cnv_est + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mageck:0.5.9.4--py38hed8969a_0"
  }
  parameter_meta {
    count_table: "Provide a tab-separated count table instead of sam\\nfiles. Each line in the table should include sgRNA\\nname (1st column), gene name (2nd column) and read\\ncounts in each sample."
    treatment_id: "Sample label or sample index (0 as the first sample)\\nin the count table as treatment experiments, separated\\nby comma (,). If sample label is provided, the labels\\nmust match the labels in the first line of the count\\ntable; for example, \\\"HL60.final,KBM7.final\\\". For\\nsample index, \\\"0,2\\\" means the 1st and 3rd samples are\\ntreatment experiments."
    day_zero_label: "Specify the label for control sample (usually day 0 or\\nplasmid). For every other sample label, the module\\nwill treat it as a treatment condition and compare\\nwith control sample."
    control_id: "Sample label or sample index in the count table as\\ncontrol experiments, separated by comma (,). Default\\nis all the samples not specified in treatment\\nexperiments."
    paired: "Paired sample comparisons. In this mode, the number of\\nsamples in -t and -c must match and have an exactly\\nthe same order in terms of samples. For example, \\\"-t\\ntreatment_r1,treatment_r2 -c control_r1,control_r2\\\"."
    norm_method: "Method for normalization, including \\\"none\\\" (no\\nnormalization), \\\"median\\\" (median normalization,\\ndefault), \\\"total\\\" (normalization by total read\\ncounts), \\\"control\\\" (normalization by control sgRNAs\\nspecified by the --control-sgrna option)."
    gene_test_fdr_threshold: "p value threshold to determine the alpha value of RRA\\nin gene test (-p option in RRA), default 0.25."
    adjust_method: "Method for sgrna-level p-value adjustment, including\\nfalse discovery rate (fdr), holm's method (holm), or\\npounds's method (pounds)."
    variance_estimation_samples: "Sample label or sample index for estimating variances,\\nseparated by comma (,). See -t/--treatment-id option\\nfor specifying samples."
    sort_criteria: "Sorting criteria, either by negative selection (neg)\\nor positive selection (pos). Default negative\\nselection."
    remove_zero: "Remove sgRNAs whose mean value is zero in control,\\ntreatment, both control/treatment, or any\\ncontrol/treatment sample. Default: both (remove those\\nsgRNAs that are zero in both control and treatment\\nsamples)."
    remove_zero_threshold: "sgRNA normalized count threshold to be considered\\nremoved in the --remove-zero option. Default 0."
    pdf_report: "Generate pdf report of the analysis."
    gene_lfc_method: "Method to calculate gene log fold changes (LFC) from\\nsgRNA LFCs. Available methods include the median/mean\\nof all sgRNAs (median/mean), or the median/mean sgRNAs\\nthat are ranked in front of the alpha cutoff in RRA\\n(alphamedian/alphamean), or the sgRNA that has the\\nsecond strongest LFC (secondbest). In the\\nalphamedian/alphamean case, the number of sgRNAs\\ncorrespond to the \\\"goodsgrna\\\" column in the output,\\nand the gene LFC will be set to 0 if no sgRNA is in\\nfront of the alpha cutoff. Default median."
    output_prefix: "The prefix of the output file(s). Default sample1."
    control_sg_rna: "A list of control sgRNAs for normalization and for\\ngenerating the null distribution of RRA."
    control_gene: "A list of genes whose sgRNAs are used as control\\nsgRNAs for normalization and for generating the null\\ndistribution of RRA."
    norm_counts_to_file: "Write normalized read counts to file ([output-\\nprefix].normalized.txt)."
    skip_gene: "Skip genes in the report. By default, \\\"NA\\\" or \\\"na\\\"\\nwill be skipped."
    keep_tmp: "Keep intermediate files."
    additional_rra_parameters: "Additional arguments to run RRA. They will be appended\\nto the command line for calling RRA."
    cnv_norm: "A matrix of copy number variation data across cell\\nlines to normalize CNV-biased sgRNA scores prior to\\ngene ranking."
    cell_line: "The name of the cell line to be used for copy number\\nvariation normalization. Must match one of the column\\nnames in the file provided by --cnv-norm."
    cnv_est: "Estimate CNV profiles from screening data. A BED file\\nwith gene positions are required as input. The CNVs of\\nthese genes are to be estimated and used for copy\\nnumber bias correction.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
    File out_norm_counts_to_file = "${in_norm_counts_to_file}"
  }
}