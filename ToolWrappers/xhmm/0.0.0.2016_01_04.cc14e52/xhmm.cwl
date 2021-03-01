class: CommandLineTool
id: xhmm.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_reference_fast_a
  doc: "Reference FASTA file (MUST have .fai index\nfile)"
  type: File?
  inputBinding:
    prefix: --referenceFASTA
- id: in_read_depths
  doc: "Matrix of *input* read-depths, where rows\n(samples) and columns (targets)\
    \ are labeled\n(default=`-')"
  type: string?
  inputBinding:
    prefix: --readDepths
- id: in_prepare_targets
  doc: Input targets lists
  type: string?
  inputBinding:
    prefix: --prepareTargets
- id: in_merged_targets
  doc: Output targets list  (default=`-')
  type: string?
  inputBinding:
    prefix: --mergedTargets
- id: in_merge_g_atk_depths
  doc: "GATK sample_interval_summary output file(s) to\nbe merged [must have *IDENTICAL*\
    \ target\nlists]"
  type: File?
  inputBinding:
    prefix: --mergeGATKdepths
- id: in_g_atk_depths_list
  doc: "A file containing a list of GATK\nsample_interval_summary output files to\
    \ be\nmerged [must have *IDENTICAL* target lists]"
  type: File?
  inputBinding:
    prefix: --GATKdepthsList
- id: in_sample_id_map
  doc: "File containing mappings of sample names to new\nsample names (in columns\
    \ designated by\nfromID, toID)"
  type: File?
  inputBinding:
    prefix: --sampleIDmap
- id: in_from_id
  doc: "Column number of OLD sample IDs to map\n(default=`1')"
  type: long?
  inputBinding:
    prefix: --fromID
- id: in_to_id
  doc: "Column number of NEW sample IDs to map\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --toID
- id: in_column_suffix
  doc: "Suffix of columns to be used for merging [where\ncolumns are in the form:\
    \ SAMPLE +\ncolumnSuffix]  (default=`_mean_cvg')"
  type: string?
  inputBinding:
    prefix: --columnSuffix
- id: in_rd_precision
  doc: "Decimal precision of read depths output\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --rdPrecision
- id: in_output_targets_by_samples
  doc: "Output targets x samples (instead of samples x\ntargets)  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --outputTargetsBySamples
- id: in_exclude_targets
  doc: File(s) of targets to exclude
  type: File?
  inputBinding:
    prefix: --excludeTargets
- id: in_exclude_chromosome_targets
  doc: Target chromosome(s) to exclude
  type: string?
  inputBinding:
    prefix: --excludeChromosomeTargets
- id: in_exclude_samples
  doc: File(s) of samples to exclude
  type: File?
  inputBinding:
    prefix: --excludeSamples
- id: in_min_target_size
  doc: "Minimum size of target (in bp) to process\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --minTargetSize
- id: in_max_target_size
  doc: Maximum size of target (in bp) to process
  type: long?
  inputBinding:
    prefix: --maxTargetSize
- id: in_min_mean_target_rd
  doc: "Minimum per-target mean RD to require for\ntarget to be processed"
  type: string?
  inputBinding:
    prefix: --minMeanTargetRD
- id: in_max_mean_target_rd
  doc: "Maximum per-target mean RD to require for\ntarget to be processed"
  type: string?
  inputBinding:
    prefix: --maxMeanTargetRD
- id: in_mins_d_target_rd
  doc: "Minimum per-target standard deviation of RD to\nrequire for target to be processed\n\
    (default=`0')"
  type: long?
  inputBinding:
    prefix: --minSdTargetRD
- id: in_max_sd_target_rd
  doc: "Maximum per-target standard deviation of RD to\nrequire for target to be processed"
  type: string?
  inputBinding:
    prefix: --maxSdTargetRD
- id: in_min_mean_sample_rd
  doc: "Minimum per-sample mean RD to require for\nsample to be processed"
  type: string?
  inputBinding:
    prefix: --minMeanSampleRD
- id: in_max_mean_sample_rd
  doc: "Maximum per-sample mean RD to require for\nsample to be processed"
  type: string?
  inputBinding:
    prefix: --maxMeanSampleRD
- id: in_mins_d_sample_rd
  doc: "Minimum per-sample standard deviation of RD to\nrequire for sample to be processed\n\
    (default=`0')"
  type: long?
  inputBinding:
    prefix: --minSdSampleRD
- id: in_max_sd_sample_rd
  doc: "Maximum per-sample standard deviation of RD to\nrequire for sample to be processed"
  type: string?
  inputBinding:
    prefix: --maxSdSampleRD
- id: in_scale_data_by_sum
  doc: "After any filtering, scale read-depth matrix\nvalues by sample- or target-\
    \ sums (as per\n--scaleDataBySumType) [i.e., divide by row or\ncolumn sums], but\
    \ multiply by factor\nspecificied by --scaleDataBySumFactor\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --scaleDataBySum
- id: in_scale_data_by_sum_type
  doc: "If --scaleDataBySum given, then scale the data\nwithin this dimension  (possible\n\
    values=\"target\", \"sample\")"
  type: string?
  inputBinding:
    prefix: --scaleDataBySumType
- id: in_scale_data_by_sum_factor
  doc: "If --scaleDataBySum given, then divide by\nappropriate sum (but multiply by\
    \ this factor)\n(default=`1e6')"
  type: double?
  inputBinding:
    prefix: --scaleDataBySumFactor
- id: in_log_one_zero
  doc: "After any filtering and optional scaling steps\n(but before any optional centering\
    \ steps),\nconvert the matrix to log10 values. To deal\nwith non-positive and\
    \ small positive values,\na truncation and then pseudocount approach is\ntaken.\
    \ Specifically, denote the original\nmatrix value as x and this parameter's\n\
    pseudocount value as v (say, 0.5). The matrix\nvalue used is then log10(max(x,\
    \ 0) + v)"
  type: long?
  inputBinding:
    prefix: --log10
- id: in_center_data
  doc: "Output sample- or target- centered read-depth\nmatrix (as per --centerType)\
    \  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --centerData
- id: in_center_type
  doc: "If --centerData given, then center the data\naround this dimension  (possible\n\
    values=\"target\", \"sample\")"
  type: string?
  inputBinding:
    prefix: --centerType
- id: in_zscore_data
  doc: "If --centerData given, then additionally\nnormalize by standard deviation\
    \ (outputting\nz-scores)  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --zScoreData
- id: in_output_excluded_targets
  doc: "File in which to output targets excluded by\nsome criterion"
  type: File?
  inputBinding:
    prefix: --outputExcludedTargets
- id: in_output_excluded_samples
  doc: "File in which to output samples excluded by\nsome criterion"
  type: File?
  inputBinding:
    prefix: --outputExcludedSamples
- id: in_output_matrix
  doc: Read-depth matrix output file  (default=`-')
  type: File?
  inputBinding:
    prefix: --outputMatrix
- id: in_matrix_argumentnormalization_sent
  doc: "Matrix is read from --readDepths argument;\nnormalization factors sent to\
    \ --PCAfiles\nargument"
  type: boolean?
  inputBinding:
    prefix: --PCA
- id: in_pc_a_save_memory
  doc: "[=STRING] Should XHMM save memory by storing some of the\nintermediate PCA\
    \ matrices as temporary files\non disk?  (default=`')"
  type: boolean?
  inputBinding:
    prefix: --PCA_saveMemory
- id: in_argumentnormalization_factors_read
  doc: "Matrix is read from --readDepths argument;\nnormalization factors read from\
    \ --PCAfiles\nargument"
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_normalize_output
  doc: "Normalized read-depth matrix output file\n(default=`-')"
  type: File?
  inputBinding:
    prefix: --normalizeOutput
- id: in_pc_normalize_method
  doc: "Method to choose which prinicipal components\nare removed for data normalization\
    \  (possible\nvalues=\"numPCtoRemove\", \"PVE_mean\",\n\"PVE_contrib\" default=`PVE_mean')"
  type: string?
  inputBinding:
    prefix: --PCnormalizeMethod
- id: in_num_pc_to_remove
  doc: "Number of highest principal components to\nfilter out  (default=`20')"
  type: long?
  inputBinding:
    prefix: --numPCtoRemove
- id: in_pve_mean_factor
  doc: "Remove all principal components that\nindividually explain more variance than\
    \ this\nfactor times the average (in the original\nPCA-ed data)  (default=`0.7')"
  type: double?
  inputBinding:
    prefix: --PVE_mean_factor
- id: in_pve_contrib
  doc: "Remove the smallest number of principal\ncomponents that explain this percent\
    \ of the\nvariance (in the original PCA-ed data)\n(default=`50')"
  type: long?
  inputBinding:
    prefix: --PVE_contrib
- id: in_pc_a_files
  doc: "Base file name for 'PCA' *output*, and\n'normalize' *input*"
  type: File?
  inputBinding:
    prefix: --PCAfiles
- id: in_var_46
  doc: Matrix is read from --readDepths argument
  type: boolean?
  inputBinding:
    prefix: --discover
- id: in_x_cnv
  doc: CNV output file  (default=`-')
  type: File?
  inputBinding:
    prefix: --xcnv
- id: in_discover_some_qual_thresh
  doc: "Quality threshold for discovering a CNV in a\nsample  (default=`30')"
  type: long?
  inputBinding:
    prefix: --discoverSomeQualThresh
- id: in_posterior_files
  doc: "Base file name for posterior probabilities\noutput files; if not given, and\
    \ --xcnv is not\n'-', this will default to --xcnv argument"
  type: File?
  inputBinding:
    prefix: --posteriorFiles
- id: in_var_50
  doc: Matrix is read from --readDepths argument
  type: boolean?
  inputBinding:
    prefix: --genotype
- id: in_gx_cnv
  doc: xhmm CNV input file to genotype in 'readDepths'
  type: File?
  inputBinding:
    prefix: --gxcnv
- id: in_max_targets_in_subsegment
  doc: "When genotyping sub-segments of input\nintervals, only consider sub-segments\n\
    consisting of this number of targets or fewer\n(default=`30')"
  type: long?
  inputBinding:
    prefix: --maxTargetsInSubsegment
- id: in_genotype_qual_threshold_when_no_exact
  doc: "Quality threshold for calling a genotype, used\n*ONLY* when 'gxcnv' does not\
    \ contain the\n'Q_EXACT' field for the interval being\ngenotyped  (default=`20')"
  type: long?
  inputBinding:
    prefix: --genotypeQualThresholdWhenNoExact
- id: in_merge_v_cfs
  doc: "VCF file(s) to be merged [must have *IDENTICAL*\ngenotyped intervals]"
  type: File?
  inputBinding:
    prefix: --mergeVCFs
- id: in_merge_vcf_list
  doc: "A file containing a list of VCF files to be\nmerged [must have *IDENTICAL*\
    \ genotyped\nintervals]"
  type: File?
  inputBinding:
    prefix: --mergeVCFlist
- id: in_param_file
  doc: (Initial) model parameters file
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_max_normalized_read_depth_val
  doc: "Value at which to cap the absolute value of\n*normalized* input read depth\
    \ values\n('readDepths')  (default=`10')"
  type: long?
  inputBinding:
    prefix: --maxNormalizedReadDepthVal
- id: in_max_qual_score
  doc: Value at which to cap the calculated quality
  type: string?
  inputBinding:
    prefix: --maxQualScore
- id: in_score_precision
  doc: "Decimal precision of quality scores\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --scorePrecision
- id: in_aux_x_cnv
  doc: "Auxiliary CNV output file (may be VERY LARGE in\n'genotype' mode)"
  type: File?
  inputBinding:
    prefix: --aux_xcnv
- id: in_aux_upstream_print_t_args
  doc: "Number of targets to print upstream of CNV in\n'auxOutput' file  (default=`2')"
  type: long?
  inputBinding:
    prefix: --auxUpstreamPrintTargs
- id: in_aux_downstream_print_t_args
  doc: "Number of targets to print downstream of CNV in\n'auxOutput' file  (default=`2')"
  type: long?
  inputBinding:
    prefix: --auxDownstreamPrintTargs
- id: in_orig_read_depths
  doc: "Matrix of unnormalized read-depths to use for\nCNV annotation, where rows\
    \ (samples) and\ncolumns (targets) are labeled"
  type: string?
  inputBinding:
    prefix: --origReadDepths
- id: in_keep_sample_ids
  doc: File containing a list of samples to be
  type: File?
  inputBinding:
    prefix: --keepSampleIDs
- id: in_vcf
  doc: Genotyped CNV output VCF file  (default=`-')
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_matrix
  doc: 'Process (filter, center, etc.) a read depth matrix and output the resulting '
  type: string
  inputBinding:
    position: 0
- id: in_matrix_dot
  doc: 'Note that first all excluded samples and targets are removed.  And, '
  type: string
  inputBinding:
    position: 1
- id: in_run_pca_create
  doc: Run PCA to create normalization factors for read depth matrix
  type: string
  inputBinding:
    position: 0
- id: in_apply_pca_factors
  doc: Apply PCA factors in order to normalize read depth matrix
  type: string
  inputBinding:
    position: 0
- id: in_discover_cnvs_normalized
  doc: Discover CNVs from normalized read depth matrix
  type: string
  inputBinding:
    position: 0
- id: in_genotype_list_cnvs
  doc: Genotype list of CNVs from normalized read depth matrix
  type: string
  inputBinding:
    position: 0
- id: in_sample
  doc: '--subsegments             In addition to genotyping the intervals '
  type: string
  inputBinding:
    position: 1
- id: in_analyzed
  doc: "Options for modes: 'genotype', 'mergeVCFs':"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_merge_g_atk_depths
  doc: "GATK sample_interval_summary output file(s) to\nbe merged [must have *IDENTICAL*\
    \ target\nlists]"
  type: File?
  outputBinding:
    glob: $(inputs.in_merge_g_atk_depths)
- id: out_g_atk_depths_list
  doc: "A file containing a list of GATK\nsample_interval_summary output files to\
    \ be\nmerged [must have *IDENTICAL* target lists]"
  type: File?
  outputBinding:
    glob: $(inputs.in_g_atk_depths_list)
- id: out_output_excluded_targets
  doc: "File in which to output targets excluded by\nsome criterion"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_excluded_targets)
- id: out_output_excluded_samples
  doc: "File in which to output samples excluded by\nsome criterion"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_excluded_samples)
- id: out_output_matrix
  doc: Read-depth matrix output file  (default=`-')
  type: File?
  outputBinding:
    glob: $(inputs.in_output_matrix)
- id: out_normalize_output
  doc: "Normalized read-depth matrix output file\n(default=`-')"
  type: File?
  outputBinding:
    glob: $(inputs.in_normalize_output)
- id: out_x_cnv
  doc: CNV output file  (default=`-')
  type: File?
  outputBinding:
    glob: $(inputs.in_x_cnv)
- id: out_posterior_files
  doc: "Base file name for posterior probabilities\noutput files; if not given, and\
    \ --xcnv is not\n'-', this will default to --xcnv argument"
  type: File?
  outputBinding:
    glob: $(inputs.in_posterior_files)
- id: out_aux_x_cnv
  doc: "Auxiliary CNV output file (may be VERY LARGE in\n'genotype' mode)"
  type: File?
  outputBinding:
    glob: $(inputs.in_aux_x_cnv)
- id: out_vcf
  doc: Genotyped CNV output VCF file  (default=`-')
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- xhmm
