version 1.0

task Xhmm {
  input {
    Boolean? detailed_help
    Boolean? full_help
    File? reference_fast_a
    String? read_depths
    Boolean? prepare_targets
    Boolean? merge_g_atk_depths
    Boolean? _excludetargetsstring_files
    File? output_matrix
    Boolean? matrix_argumentnormalization_sent
    Boolean? pc_a_save_memory
    Boolean? matrix_argumentnormalization_read
    File? normalize_output
    String? pc_normalize_method
    Int? num_pc_to_remove
    Float? pve_mean_factor
    Int? pve_contrib
    File? pc_a_files
    Boolean? var_17
    File? x_cnv
    Int? discover_some_qual_thresh
    File? posterior_files
    Boolean? var_21
    File? gx_cnv
    Int? max_targets_in_subsegment
    Int? genotype_qual_threshold_when_no_exact
    Boolean? merge_v_cfs
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
    Boolean? print_hmm
    String process_filter_center
    String matrix_dot
    String run_pca_create
    String apply_pca_factors
    String discover_cnvs_normalized
    String genotype_list_cnvs
    String sample
    String scores
    String analyzed
  }
  command <<<
    xhmm \
      ~{process_filter_center} \
      ~{matrix_dot} \
      ~{run_pca_create} \
      ~{apply_pca_factors} \
      ~{discover_cnvs_normalized} \
      ~{genotype_list_cnvs} \
      ~{sample} \
      ~{scores} \
      ~{analyzed} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(reference_fast_a) then ("--referenceFASTA " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(read_depths) then ("--readDepths " +  '"' + read_depths + '"') else ""} \
      ~{if (prepare_targets) then "--prepareTargets" else ""} \
      ~{if (merge_g_atk_depths) then "--mergeGATKdepths" else ""} \
      ~{if (_excludetargetsstring_files) then "--matrix" else ""} \
      ~{if defined(output_matrix) then ("--outputMatrix " +  '"' + output_matrix + '"') else ""} \
      ~{if (matrix_argumentnormalization_sent) then "--PCA" else ""} \
      ~{if (pc_a_save_memory) then "--PCA_saveMemory" else ""} \
      ~{if (matrix_argumentnormalization_read) then "--normalize" else ""} \
      ~{if defined(normalize_output) then ("--normalizeOutput " +  '"' + normalize_output + '"') else ""} \
      ~{if defined(pc_normalize_method) then ("--PCnormalizeMethod " +  '"' + pc_normalize_method + '"') else ""} \
      ~{if defined(num_pc_to_remove) then ("--numPCtoRemove " +  '"' + num_pc_to_remove + '"') else ""} \
      ~{if defined(pve_mean_factor) then ("--PVE_mean_factor " +  '"' + pve_mean_factor + '"') else ""} \
      ~{if defined(pve_contrib) then ("--PVE_contrib " +  '"' + pve_contrib + '"') else ""} \
      ~{if defined(pc_a_files) then ("--PCAfiles " +  '"' + pc_a_files + '"') else ""} \
      ~{if (var_17) then "--discover" else ""} \
      ~{if defined(x_cnv) then ("--xcnv " +  '"' + x_cnv + '"') else ""} \
      ~{if defined(discover_some_qual_thresh) then ("--discoverSomeQualThresh " +  '"' + discover_some_qual_thresh + '"') else ""} \
      ~{if defined(posterior_files) then ("--posteriorFiles " +  '"' + posterior_files + '"') else ""} \
      ~{if (var_21) then "--genotype" else ""} \
      ~{if defined(gx_cnv) then ("--gxcnv " +  '"' + gx_cnv + '"') else ""} \
      ~{if defined(max_targets_in_subsegment) then ("--maxTargetsInSubsegment " +  '"' + max_targets_in_subsegment + '"') else ""} \
      ~{if defined(genotype_qual_threshold_when_no_exact) then ("--genotypeQualThresholdWhenNoExact " +  '"' + genotype_qual_threshold_when_no_exact + '"') else ""} \
      ~{if (merge_v_cfs) then "--mergeVCFs" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(max_normalized_read_depth_val) then ("--maxNormalizedReadDepthVal " +  '"' + max_normalized_read_depth_val + '"') else ""} \
      ~{if defined(max_qual_score) then ("--maxQualScore " +  '"' + max_qual_score + '"') else ""} \
      ~{if defined(score_precision) then ("--scorePrecision " +  '"' + score_precision + '"') else ""} \
      ~{if defined(aux_x_cnv) then ("--aux_xcnv " +  '"' + aux_x_cnv + '"') else ""} \
      ~{if defined(aux_upstream_print_t_args) then ("--auxUpstreamPrintTargs " +  '"' + aux_upstream_print_t_args + '"') else ""} \
      ~{if defined(aux_downstream_print_t_args) then ("--auxDownstreamPrintTargs " +  '"' + aux_downstream_print_t_args + '"') else ""} \
      ~{if defined(orig_read_depths) then ("--origReadDepths " +  '"' + orig_read_depths + '"') else ""} \
      ~{if defined(keep_sample_ids) then ("--keepSampleIDs " +  '"' + keep_sample_ids + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if (print_hmm) then "--printHMM" else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    reference_fast_a: "Reference FASTA file (MUST have .fai index\\nfile)"
    read_depths: "Matrix of *input* read-depths, where rows\\n(samples) and columns (targets) are labeled\\n(default=`-')"
    prepare_targets: "--targets=STRING          Input targets lists\\n--mergedTargets=STRING    Output targets list  (default=`-')"
    merge_g_atk_depths: "--GATKdepths=STRING       GATK sample_interval_summary output file(s) to\\nbe merged [must have *IDENTICAL* target\\nlists]\\n--GATKdepthsList=STRING   A file containing a list of GATK\\nsample_interval_summary output files to be\\nmerged [must have *IDENTICAL* target lists]\\n--sampleIDmap=STRING      File containing mappings of sample names to new\\nsample names (in columns designated by\\nfromID, toID)\\n--fromID=INT              Column number of OLD sample IDs to map\\n(default=`1')\\n--toID=INT                Column number of NEW sample IDs to map\\n(default=`2')\\n--columnSuffix=STRING     Suffix of columns to be used for merging [where\\ncolumns are in the form: SAMPLE +\\ncolumnSuffix]  (default=`_mean_cvg')\\n--rdPrecision=INT         Decimal precision of read depths output\\n(default=`2')\\n--outputTargetsBySamples  Output targets x samples (instead of samples x\\ntargets)  (default=off)"
    _excludetargetsstring_files: "--excludeTargets=STRING   File(s) of targets to exclude\\n--excludeChromosomeTargets=STRING\\nTarget chromosome(s) to exclude\\n--excludeSamples=STRING   File(s) of samples to exclude\\n--minTargetSize=INT       Minimum size of target (in bp) to process\\n(default=`0')\\n--maxTargetSize=INT       Maximum size of target (in bp) to process\\n--minMeanTargetRD=DOUBLE  Minimum per-target mean RD to require for\\ntarget to be processed\\n--maxMeanTargetRD=DOUBLE  Maximum per-target mean RD to require for\\ntarget to be processed\\n--minSdTargetRD=DOUBLE    Minimum per-target standard deviation of RD to\\nrequire for target to be processed\\n(default=`0')\\n--maxSdTargetRD=DOUBLE    Maximum per-target standard deviation of RD to\\nrequire for target to be processed\\n--minMeanSampleRD=DOUBLE  Minimum per-sample mean RD to require for\\nsample to be processed\\n--maxMeanSampleRD=DOUBLE  Maximum per-sample mean RD to require for\\nsample to be processed\\n--minSdSampleRD=DOUBLE    Minimum per-sample standard deviation of RD to\\nrequire for sample to be processed\\n(default=`0')\\n--maxSdSampleRD=DOUBLE    Maximum per-sample standard deviation of RD to\\nrequire for sample to be processed\\n--scaleDataBySum          After any filtering, scale read-depth matrix\\nvalues by sample- or target- sums (as per\\n--scaleDataBySumType) [i.e., divide by row or\\ncolumn sums], but multiply by factor\\nspecificied by --scaleDataBySumFactor\\n(default=off)\\n--scaleDataBySumType=ENUM If --scaleDataBySum given, then scale the data\\nwithin this dimension  (possible\\nvalues=\\\"target\\\", \\\"sample\\\")\\n--scaleDataBySumFactor=DOUBLE\\nIf --scaleDataBySum given, then divide by\\nappropriate sum (but multiply by this factor)\\n(default=`1e6')\\n--log10=DOUBLE            After any filtering and optional scaling steps\\n(but before any optional centering steps),\\nconvert the matrix to log10 values. To deal\\nwith non-positive and small positive values,\\na truncation and then pseudocount approach is\\ntaken. Specifically, denote the original\\nmatrix value as x and this parameter's\\npseudocount value as v (say, 0.5). The matrix\\nvalue used is then log10(max(x, 0) + v)\\n--centerData              Output sample- or target- centered read-depth\\nmatrix (as per --centerType)  (default=off)\\n--centerType=ENUM         If --centerData given, then center the data\\naround this dimension  (possible\\nvalues=\\\"target\\\", \\\"sample\\\")\\n--zScoreData              If --centerData given, then additionally\\nnormalize by standard deviation (outputting\\nz-scores)  (default=off)\\n--outputExcludedTargets=STRING\\nFile in which to output targets excluded by\\nsome criterion\\n--outputExcludedSamples=STRING\\nFile in which to output samples excluded by\\nsome criterion"
    output_matrix: "Read-depth matrix output file  (default=`-')"
    matrix_argumentnormalization_sent: "Matrix is read from --readDepths argument;\\nnormalization factors sent to --PCAfiles\\nargument"
    pc_a_save_memory: "[=STRING] Should XHMM save memory by storing some of the\\nintermediate PCA matrices as temporary files\\non disk?  (default=`')"
    matrix_argumentnormalization_read: "Matrix is read from --readDepths argument;\\nnormalization factors read from --PCAfiles\\nargument"
    normalize_output: "Normalized read-depth matrix output file\\n(default=`-')"
    pc_normalize_method: "Method to choose which prinicipal components\\nare removed for data normalization  (possible\\nvalues=\\\"numPCtoRemove\\\", \\\"PVE_mean\\\",\\n\\\"PVE_contrib\\\" default=`PVE_mean')"
    num_pc_to_remove: "Number of highest principal components to\\nfilter out  (default=`20')"
    pve_mean_factor: "Remove all principal components that\\nindividually explain more variance than this\\nfactor times the average (in the original\\nPCA-ed data)  (default=`0.7')"
    pve_contrib: "Remove the smallest number of principal\\ncomponents that explain this percent of the\\nvariance (in the original PCA-ed data)\\n(default=`50')"
    pc_a_files: "Base file name for 'PCA' *output*, and\\n'normalize' *input*"
    var_17: "Matrix is read from --readDepths argument"
    x_cnv: "CNV output file  (default=`-')"
    discover_some_qual_thresh: "Quality threshold for discovering a CNV in a\\nsample  (default=`30')"
    posterior_files: "Base file name for posterior probabilities\\noutput files; if not given, and --xcnv is not\\n'-', this will default to --xcnv argument"
    var_21: "Matrix is read from --readDepths argument"
    gx_cnv: "xhmm CNV input file to genotype in 'readDepths'"
    max_targets_in_subsegment: "When genotyping sub-segments of input\\nintervals, only consider sub-segments\\nconsisting of this number of targets or fewer\\n(default=`30')"
    genotype_qual_threshold_when_no_exact: "Quality threshold for calling a genotype, used\\n*ONLY* when 'gxcnv' does not contain the\\n'Q_EXACT' field for the interval being\\ngenotyped  (default=`20')"
    merge_v_cfs: "--mergeVCF=STRING         VCF file(s) to be merged [must have *IDENTICAL*\\ngenotyped intervals]\\n--mergeVCFlist=STRING     A file containing a list of VCF files to be\\nmerged [must have *IDENTICAL* genotyped\\nintervals]"
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
    print_hmm: "Mode: transition\\nPrint HMM transition matrix for user-requested genomic distances\\n--transition\\n"
    process_filter_center: "Process (filter, center, etc.) a read depth matrix and output the resulting "
    matrix_dot: "Note that first all excluded samples and targets are removed.  And, "
    run_pca_create: "Run PCA to create normalization factors for read depth matrix"
    apply_pca_factors: "Apply PCA factors in order to normalize read depth matrix"
    discover_cnvs_normalized: "Discover CNVs from normalized read depth matrix"
    genotype_list_cnvs: "Genotype list of CNVs from normalized read depth matrix"
    sample: "--subsegments             In addition to genotyping the intervals "
    scores: "(default=`99')"
    analyzed: "Options for modes: 'genotype', 'mergeVCFs':"
  }
  output {
    File out_stdout = stdout()
    File out_output_matrix = "${in_output_matrix}"
    File out_normalize_output = "${in_normalize_output}"
    File out_x_cnv = "${in_x_cnv}"
    File out_posterior_files = "${in_posterior_files}"
    File out_aux_x_cnv = "${in_aux_x_cnv}"
    File out_vcf = "${in_vcf}"
  }
}