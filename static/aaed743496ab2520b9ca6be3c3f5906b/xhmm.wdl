version 1.0

task Xhmm {
  input {
    Boolean? detailed_help
    Boolean? full_help
    File? reference_fast_a
    String? read_depths
    String? prepare_targets
    String? merged_targets
    File? merge_g_atk_depths
    File? g_atk_depths_list
    File? sample_id_map
    Int? from_id
    Int? to_id
    String? column_suffix
    Int? rd_precision
    Boolean? output_targets_by_samples
    File? exclude_targets
    String? exclude_chromosome_targets
    File? exclude_samples
    Int? min_target_size
    Int? max_target_size
    String? min_mean_target_rd
    String? max_mean_target_rd
    Int? mins_d_target_rd
    String? max_sd_target_rd
    String? min_mean_sample_rd
    String? max_mean_sample_rd
    Int? mins_d_sample_rd
    String? max_sd_sample_rd
    Boolean? scale_data_by_sum
    String? scale_data_by_sum_type
    Float? scale_data_by_sum_factor
    Int? log_one_zero
    Boolean? center_data
    String? center_type
    Boolean? zscore_data
    File? output_excluded_targets
    File? output_excluded_samples
    File? output_matrix
    Boolean? matrix_argumentnormalization_sent
    Boolean? pc_a_save_memory
    Boolean? argumentnormalization_factors_read
    File? normalize_output
    String? pc_normalize_method
    Int? num_pc_to_remove
    Float? pve_mean_factor
    Int? pve_contrib
    File? pc_a_files
    Boolean? var_46
    File? x_cnv
    Int? discover_some_qual_thresh
    File? posterior_files
    Boolean? var_50
    File? gx_cnv
    Int? max_targets_in_subsegment
    Int? genotype_qual_threshold_when_no_exact
    File? merge_v_cfs
    File? merge_vcf_list
    File? param_file
    Int? max_normalized_read_depth_val
    String? max_qual_score
    Int? score_precision
    File? aux_x_cnv
    Int? aux_upstream_print_t_args
    Int? aux_downstream_print_t_args
    String? orig_read_depths
    File? keep_sample_ids
    File? vcf
    String matrix
    String matrix_dot
    String run_pca_create
    String apply_pca_factors
    String discover_cnvs_normalized
    String genotype_list_cnvs
    String sample
    String analyzed
  }
  command <<<
    xhmm \
      ~{matrix} \
      ~{matrix_dot} \
      ~{run_pca_create} \
      ~{apply_pca_factors} \
      ~{discover_cnvs_normalized} \
      ~{genotype_list_cnvs} \
      ~{sample} \
      ~{analyzed} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(reference_fast_a) then ("--referenceFASTA " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(read_depths) then ("--readDepths " +  '"' + read_depths + '"') else ""} \
      ~{if defined(prepare_targets) then ("--prepareTargets " +  '"' + prepare_targets + '"') else ""} \
      ~{if defined(merged_targets) then ("--mergedTargets " +  '"' + merged_targets + '"') else ""} \
      ~{if defined(merge_g_atk_depths) then ("--mergeGATKdepths " +  '"' + merge_g_atk_depths + '"') else ""} \
      ~{if defined(g_atk_depths_list) then ("--GATKdepthsList " +  '"' + g_atk_depths_list + '"') else ""} \
      ~{if defined(sample_id_map) then ("--sampleIDmap " +  '"' + sample_id_map + '"') else ""} \
      ~{if defined(from_id) then ("--fromID " +  '"' + from_id + '"') else ""} \
      ~{if defined(to_id) then ("--toID " +  '"' + to_id + '"') else ""} \
      ~{if defined(column_suffix) then ("--columnSuffix " +  '"' + column_suffix + '"') else ""} \
      ~{if defined(rd_precision) then ("--rdPrecision " +  '"' + rd_precision + '"') else ""} \
      ~{if (output_targets_by_samples) then "--outputTargetsBySamples" else ""} \
      ~{if defined(exclude_targets) then ("--excludeTargets " +  '"' + exclude_targets + '"') else ""} \
      ~{if defined(exclude_chromosome_targets) then ("--excludeChromosomeTargets " +  '"' + exclude_chromosome_targets + '"') else ""} \
      ~{if defined(exclude_samples) then ("--excludeSamples " +  '"' + exclude_samples + '"') else ""} \
      ~{if defined(min_target_size) then ("--minTargetSize " +  '"' + min_target_size + '"') else ""} \
      ~{if defined(max_target_size) then ("--maxTargetSize " +  '"' + max_target_size + '"') else ""} \
      ~{if defined(min_mean_target_rd) then ("--minMeanTargetRD " +  '"' + min_mean_target_rd + '"') else ""} \
      ~{if defined(max_mean_target_rd) then ("--maxMeanTargetRD " +  '"' + max_mean_target_rd + '"') else ""} \
      ~{if defined(mins_d_target_rd) then ("--minSdTargetRD " +  '"' + mins_d_target_rd + '"') else ""} \
      ~{if defined(max_sd_target_rd) then ("--maxSdTargetRD " +  '"' + max_sd_target_rd + '"') else ""} \
      ~{if defined(min_mean_sample_rd) then ("--minMeanSampleRD " +  '"' + min_mean_sample_rd + '"') else ""} \
      ~{if defined(max_mean_sample_rd) then ("--maxMeanSampleRD " +  '"' + max_mean_sample_rd + '"') else ""} \
      ~{if defined(mins_d_sample_rd) then ("--minSdSampleRD " +  '"' + mins_d_sample_rd + '"') else ""} \
      ~{if defined(max_sd_sample_rd) then ("--maxSdSampleRD " +  '"' + max_sd_sample_rd + '"') else ""} \
      ~{if (scale_data_by_sum) then "--scaleDataBySum" else ""} \
      ~{if defined(scale_data_by_sum_type) then ("--scaleDataBySumType " +  '"' + scale_data_by_sum_type + '"') else ""} \
      ~{if defined(scale_data_by_sum_factor) then ("--scaleDataBySumFactor " +  '"' + scale_data_by_sum_factor + '"') else ""} \
      ~{if defined(log_one_zero) then ("--log10 " +  '"' + log_one_zero + '"') else ""} \
      ~{if (center_data) then "--centerData" else ""} \
      ~{if defined(center_type) then ("--centerType " +  '"' + center_type + '"') else ""} \
      ~{if (zscore_data) then "--zScoreData" else ""} \
      ~{if defined(output_excluded_targets) then ("--outputExcludedTargets " +  '"' + output_excluded_targets + '"') else ""} \
      ~{if defined(output_excluded_samples) then ("--outputExcludedSamples " +  '"' + output_excluded_samples + '"') else ""} \
      ~{if defined(output_matrix) then ("--outputMatrix " +  '"' + output_matrix + '"') else ""} \
      ~{if (matrix_argumentnormalization_sent) then "--PCA" else ""} \
      ~{if (pc_a_save_memory) then "--PCA_saveMemory" else ""} \
      ~{if (argumentnormalization_factors_read) then "--normalize" else ""} \
      ~{if defined(normalize_output) then ("--normalizeOutput " +  '"' + normalize_output + '"') else ""} \
      ~{if defined(pc_normalize_method) then ("--PCnormalizeMethod " +  '"' + pc_normalize_method + '"') else ""} \
      ~{if defined(num_pc_to_remove) then ("--numPCtoRemove " +  '"' + num_pc_to_remove + '"') else ""} \
      ~{if defined(pve_mean_factor) then ("--PVE_mean_factor " +  '"' + pve_mean_factor + '"') else ""} \
      ~{if defined(pve_contrib) then ("--PVE_contrib " +  '"' + pve_contrib + '"') else ""} \
      ~{if defined(pc_a_files) then ("--PCAfiles " +  '"' + pc_a_files + '"') else ""} \
      ~{if (var_46) then "--discover" else ""} \
      ~{if defined(x_cnv) then ("--xcnv " +  '"' + x_cnv + '"') else ""} \
      ~{if defined(discover_some_qual_thresh) then ("--discoverSomeQualThresh " +  '"' + discover_some_qual_thresh + '"') else ""} \
      ~{if defined(posterior_files) then ("--posteriorFiles " +  '"' + posterior_files + '"') else ""} \
      ~{if (var_50) then "--genotype" else ""} \
      ~{if defined(gx_cnv) then ("--gxcnv " +  '"' + gx_cnv + '"') else ""} \
      ~{if defined(max_targets_in_subsegment) then ("--maxTargetsInSubsegment " +  '"' + max_targets_in_subsegment + '"') else ""} \
      ~{if defined(genotype_qual_threshold_when_no_exact) then ("--genotypeQualThresholdWhenNoExact " +  '"' + genotype_qual_threshold_when_no_exact + '"') else ""} \
      ~{if defined(merge_v_cfs) then ("--mergeVCFs " +  '"' + merge_v_cfs + '"') else ""} \
      ~{if defined(merge_vcf_list) then ("--mergeVCFlist " +  '"' + merge_vcf_list + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(max_normalized_read_depth_val) then ("--maxNormalizedReadDepthVal " +  '"' + max_normalized_read_depth_val + '"') else ""} \
      ~{if defined(max_qual_score) then ("--maxQualScore " +  '"' + max_qual_score + '"') else ""} \
      ~{if defined(score_precision) then ("--scorePrecision " +  '"' + score_precision + '"') else ""} \
      ~{if defined(aux_x_cnv) then ("--aux_xcnv " +  '"' + aux_x_cnv + '"') else ""} \
      ~{if defined(aux_upstream_print_t_args) then ("--auxUpstreamPrintTargs " +  '"' + aux_upstream_print_t_args + '"') else ""} \
      ~{if defined(aux_downstream_print_t_args) then ("--auxDownstreamPrintTargs " +  '"' + aux_downstream_print_t_args + '"') else ""} \
      ~{if defined(orig_read_depths) then ("--origReadDepths " +  '"' + orig_read_depths + '"') else ""} \
      ~{if defined(keep_sample_ids) then ("--keepSampleIDs " +  '"' + keep_sample_ids + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    reference_fast_a: "Reference FASTA file (MUST have .fai index\\nfile)"
    read_depths: "Matrix of *input* read-depths, where rows\\n(samples) and columns (targets) are labeled\\n(default=`-')"
    prepare_targets: "Input targets lists"
    merged_targets: "Output targets list  (default=`-')"
    merge_g_atk_depths: "GATK sample_interval_summary output file(s) to\\nbe merged [must have *IDENTICAL* target\\nlists]"
    g_atk_depths_list: "A file containing a list of GATK\\nsample_interval_summary output files to be\\nmerged [must have *IDENTICAL* target lists]"
    sample_id_map: "File containing mappings of sample names to new\\nsample names (in columns designated by\\nfromID, toID)"
    from_id: "Column number of OLD sample IDs to map\\n(default=`1')"
    to_id: "Column number of NEW sample IDs to map\\n(default=`2')"
    column_suffix: "Suffix of columns to be used for merging [where\\ncolumns are in the form: SAMPLE +\\ncolumnSuffix]  (default=`_mean_cvg')"
    rd_precision: "Decimal precision of read depths output\\n(default=`2')"
    output_targets_by_samples: "Output targets x samples (instead of samples x\\ntargets)  (default=off)"
    exclude_targets: "File(s) of targets to exclude"
    exclude_chromosome_targets: "Target chromosome(s) to exclude"
    exclude_samples: "File(s) of samples to exclude"
    min_target_size: "Minimum size of target (in bp) to process\\n(default=`0')"
    max_target_size: "Maximum size of target (in bp) to process"
    min_mean_target_rd: "Minimum per-target mean RD to require for\\ntarget to be processed"
    max_mean_target_rd: "Maximum per-target mean RD to require for\\ntarget to be processed"
    mins_d_target_rd: "Minimum per-target standard deviation of RD to\\nrequire for target to be processed\\n(default=`0')"
    max_sd_target_rd: "Maximum per-target standard deviation of RD to\\nrequire for target to be processed"
    min_mean_sample_rd: "Minimum per-sample mean RD to require for\\nsample to be processed"
    max_mean_sample_rd: "Maximum per-sample mean RD to require for\\nsample to be processed"
    mins_d_sample_rd: "Minimum per-sample standard deviation of RD to\\nrequire for sample to be processed\\n(default=`0')"
    max_sd_sample_rd: "Maximum per-sample standard deviation of RD to\\nrequire for sample to be processed"
    scale_data_by_sum: "After any filtering, scale read-depth matrix\\nvalues by sample- or target- sums (as per\\n--scaleDataBySumType) [i.e., divide by row or\\ncolumn sums], but multiply by factor\\nspecificied by --scaleDataBySumFactor\\n(default=off)"
    scale_data_by_sum_type: "If --scaleDataBySum given, then scale the data\\nwithin this dimension  (possible\\nvalues=\\\"target\\\", \\\"sample\\\")"
    scale_data_by_sum_factor: "If --scaleDataBySum given, then divide by\\nappropriate sum (but multiply by this factor)\\n(default=`1e6')"
    log_one_zero: "After any filtering and optional scaling steps\\n(but before any optional centering steps),\\nconvert the matrix to log10 values. To deal\\nwith non-positive and small positive values,\\na truncation and then pseudocount approach is\\ntaken. Specifically, denote the original\\nmatrix value as x and this parameter's\\npseudocount value as v (say, 0.5). The matrix\\nvalue used is then log10(max(x, 0) + v)"
    center_data: "Output sample- or target- centered read-depth\\nmatrix (as per --centerType)  (default=off)"
    center_type: "If --centerData given, then center the data\\naround this dimension  (possible\\nvalues=\\\"target\\\", \\\"sample\\\")"
    zscore_data: "If --centerData given, then additionally\\nnormalize by standard deviation (outputting\\nz-scores)  (default=off)"
    output_excluded_targets: "File in which to output targets excluded by\\nsome criterion"
    output_excluded_samples: "File in which to output samples excluded by\\nsome criterion"
    output_matrix: "Read-depth matrix output file  (default=`-')"
    matrix_argumentnormalization_sent: "Matrix is read from --readDepths argument;\\nnormalization factors sent to --PCAfiles\\nargument"
    pc_a_save_memory: "[=STRING] Should XHMM save memory by storing some of the\\nintermediate PCA matrices as temporary files\\non disk?  (default=`')"
    argumentnormalization_factors_read: "Matrix is read from --readDepths argument;\\nnormalization factors read from --PCAfiles\\nargument"
    normalize_output: "Normalized read-depth matrix output file\\n(default=`-')"
    pc_normalize_method: "Method to choose which prinicipal components\\nare removed for data normalization  (possible\\nvalues=\\\"numPCtoRemove\\\", \\\"PVE_mean\\\",\\n\\\"PVE_contrib\\\" default=`PVE_mean')"
    num_pc_to_remove: "Number of highest principal components to\\nfilter out  (default=`20')"
    pve_mean_factor: "Remove all principal components that\\nindividually explain more variance than this\\nfactor times the average (in the original\\nPCA-ed data)  (default=`0.7')"
    pve_contrib: "Remove the smallest number of principal\\ncomponents that explain this percent of the\\nvariance (in the original PCA-ed data)\\n(default=`50')"
    pc_a_files: "Base file name for 'PCA' *output*, and\\n'normalize' *input*"
    var_46: "Matrix is read from --readDepths argument"
    x_cnv: "CNV output file  (default=`-')"
    discover_some_qual_thresh: "Quality threshold for discovering a CNV in a\\nsample  (default=`30')"
    posterior_files: "Base file name for posterior probabilities\\noutput files; if not given, and --xcnv is not\\n'-', this will default to --xcnv argument"
    var_50: "Matrix is read from --readDepths argument"
    gx_cnv: "xhmm CNV input file to genotype in 'readDepths'"
    max_targets_in_subsegment: "When genotyping sub-segments of input\\nintervals, only consider sub-segments\\nconsisting of this number of targets or fewer\\n(default=`30')"
    genotype_qual_threshold_when_no_exact: "Quality threshold for calling a genotype, used\\n*ONLY* when 'gxcnv' does not contain the\\n'Q_EXACT' field for the interval being\\ngenotyped  (default=`20')"
    merge_v_cfs: "VCF file(s) to be merged [must have *IDENTICAL*\\ngenotyped intervals]"
    merge_vcf_list: "A file containing a list of VCF files to be\\nmerged [must have *IDENTICAL* genotyped\\nintervals]"
    param_file: "(Initial) model parameters file"
    max_normalized_read_depth_val: "Value at which to cap the absolute value of\\n*normalized* input read depth values\\n('readDepths')  (default=`10')"
    max_qual_score: "Value at which to cap the calculated quality"
    score_precision: "Decimal precision of quality scores\\n(default=`0')"
    aux_x_cnv: "Auxiliary CNV output file (may be VERY LARGE in\\n'genotype' mode)"
    aux_upstream_print_t_args: "Number of targets to print upstream of CNV in\\n'auxOutput' file  (default=`2')"
    aux_downstream_print_t_args: "Number of targets to print downstream of CNV in\\n'auxOutput' file  (default=`2')"
    orig_read_depths: "Matrix of unnormalized read-depths to use for\\nCNV annotation, where rows (samples) and\\ncolumns (targets) are labeled"
    keep_sample_ids: "File containing a list of samples to be"
    vcf: "Genotyped CNV output VCF file  (default=`-')"
    matrix: "Process (filter, center, etc.) a read depth matrix and output the resulting "
    matrix_dot: "Note that first all excluded samples and targets are removed.  And, "
    run_pca_create: "Run PCA to create normalization factors for read depth matrix"
    apply_pca_factors: "Apply PCA factors in order to normalize read depth matrix"
    discover_cnvs_normalized: "Discover CNVs from normalized read depth matrix"
    genotype_list_cnvs: "Genotype list of CNVs from normalized read depth matrix"
    sample: "--subsegments             In addition to genotyping the intervals "
    analyzed: "Options for modes: 'genotype', 'mergeVCFs':"
  }
  output {
    File out_stdout = stdout()
    File out_merge_g_atk_depths = "${in_merge_g_atk_depths}"
    File out_g_atk_depths_list = "${in_g_atk_depths_list}"
    File out_output_excluded_targets = "${in_output_excluded_targets}"
    File out_output_excluded_samples = "${in_output_excluded_samples}"
    File out_output_matrix = "${in_output_matrix}"
    File out_normalize_output = "${in_normalize_output}"
    File out_x_cnv = "${in_x_cnv}"
    File out_posterior_files = "${in_posterior_files}"
    File out_aux_x_cnv = "${in_aux_x_cnv}"
    File out_vcf = "${in_vcf}"
  }
}