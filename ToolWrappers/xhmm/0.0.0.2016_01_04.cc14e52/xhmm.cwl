class: CommandLineTool
id: xhmm.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_reference_fast_a
  doc: "Reference FASTA file (MUST have .fai index\nfile)"
  type: File
  inputBinding:
    prefix: --referenceFASTA
- id: in_read_depths
  doc: "Matrix of *input* read-depths, where rows\n(samples) and columns (targets)\
    \ are labeled\n(default=`-')"
  type: string
  inputBinding:
    prefix: --readDepths
- id: in_prepare_targets
  doc: "--targets=STRING          Input targets lists\n--mergedTargets=STRING    Output\
    \ targets list  (default=`-')"
  type: boolean
  inputBinding:
    prefix: --prepareTargets
- id: in_merge_g_atk_depths
  doc: "--GATKdepths=STRING       GATK sample_interval_summary output file(s) to\n\
    be merged [must have *IDENTICAL* target\nlists]\n--GATKdepthsList=STRING   A file\
    \ containing a list of GATK\nsample_interval_summary output files to be\nmerged\
    \ [must have *IDENTICAL* target lists]\n--sampleIDmap=STRING      File containing\
    \ mappings of sample names to new\nsample names (in columns designated by\nfromID,\
    \ toID)\n--fromID=INT              Column number of OLD sample IDs to map\n(default=`1')\n\
    --toID=INT                Column number of NEW sample IDs to map\n(default=`2')\n\
    --columnSuffix=STRING     Suffix of columns to be used for merging [where\ncolumns\
    \ are in the form: SAMPLE +\ncolumnSuffix]  (default=`_mean_cvg')\n--rdPrecision=INT\
    \         Decimal precision of read depths output\n(default=`2')\n--outputTargetsBySamples\
    \  Output targets x samples (instead of samples x\ntargets)  (default=off)"
  type: boolean
  inputBinding:
    prefix: --mergeGATKdepths
- id: in__excludetargetsstring_files
  doc: "--excludeTargets=STRING   File(s) of targets to exclude\n--excludeChromosomeTargets=STRING\n\
    Target chromosome(s) to exclude\n--excludeSamples=STRING   File(s) of samples\
    \ to exclude\n--minTargetSize=INT       Minimum size of target (in bp) to process\n\
    (default=`0')\n--maxTargetSize=INT       Maximum size of target (in bp) to process\n\
    --minMeanTargetRD=DOUBLE  Minimum per-target mean RD to require for\ntarget to\
    \ be processed\n--maxMeanTargetRD=DOUBLE  Maximum per-target mean RD to require\
    \ for\ntarget to be processed\n--minSdTargetRD=DOUBLE    Minimum per-target standard\
    \ deviation of RD to\nrequire for target to be processed\n(default=`0')\n--maxSdTargetRD=DOUBLE\
    \    Maximum per-target standard deviation of RD to\nrequire for target to be\
    \ processed\n--minMeanSampleRD=DOUBLE  Minimum per-sample mean RD to require for\n\
    sample to be processed\n--maxMeanSampleRD=DOUBLE  Maximum per-sample mean RD to\
    \ require for\nsample to be processed\n--minSdSampleRD=DOUBLE    Minimum per-sample\
    \ standard deviation of RD to\nrequire for sample to be processed\n(default=`0')\n\
    --maxSdSampleRD=DOUBLE    Maximum per-sample standard deviation of RD to\nrequire\
    \ for sample to be processed\n--scaleDataBySum          After any filtering, scale\
    \ read-depth matrix\nvalues by sample- or target- sums (as per\n--scaleDataBySumType)\
    \ [i.e., divide by row or\ncolumn sums], but multiply by factor\nspecificied by\
    \ --scaleDataBySumFactor\n(default=off)\n--scaleDataBySumType=ENUM If --scaleDataBySum\
    \ given, then scale the data\nwithin this dimension  (possible\nvalues=\"target\"\
    , \"sample\")\n--scaleDataBySumFactor=DOUBLE\nIf --scaleDataBySum given, then\
    \ divide by\nappropriate sum (but multiply by this factor)\n(default=`1e6')\n\
    --log10=DOUBLE            After any filtering and optional scaling steps\n(but\
    \ before any optional centering steps),\nconvert the matrix to log10 values. To\
    \ deal\nwith non-positive and small positive values,\na truncation and then pseudocount\
    \ approach is\ntaken. Specifically, denote the original\nmatrix value as x and\
    \ this parameter's\npseudocount value as v (say, 0.5). The matrix\nvalue used\
    \ is then log10(max(x, 0) + v)\n--centerData              Output sample- or target-\
    \ centered read-depth\nmatrix (as per --centerType)  (default=off)\n--centerType=ENUM\
    \         If --centerData given, then center the data\naround this dimension \
    \ (possible\nvalues=\"target\", \"sample\")\n--zScoreData              If --centerData\
    \ given, then additionally\nnormalize by standard deviation (outputting\nz-scores)\
    \  (default=off)\n--outputExcludedTargets=STRING\nFile in which to output targets\
    \ excluded by\nsome criterion\n--outputExcludedSamples=STRING\nFile in which to\
    \ output samples excluded by\nsome criterion"
  type: boolean
  inputBinding:
    prefix: --matrix
- id: in_output_matrix
  doc: Read-depth matrix output file  (default=`-')
  type: File
  inputBinding:
    prefix: --outputMatrix
- id: in_matrix_argumentnormalization_sent
  doc: "Matrix is read from --readDepths argument;\nnormalization factors sent to\
    \ --PCAfiles\nargument"
  type: boolean
  inputBinding:
    prefix: --PCA
- id: in_pc_a_save_memory
  doc: "[=STRING] Should XHMM save memory by storing some of the\nintermediate PCA\
    \ matrices as temporary files\non disk?  (default=`')"
  type: boolean
  inputBinding:
    prefix: --PCA_saveMemory
- id: in_matrix_argumentnormalization_read
  doc: "Matrix is read from --readDepths argument;\nnormalization factors read from\
    \ --PCAfiles\nargument"
  type: boolean
  inputBinding:
    prefix: --normalize
- id: in_normalize_output
  doc: "Normalized read-depth matrix output file\n(default=`-')"
  type: File
  inputBinding:
    prefix: --normalizeOutput
- id: in_pc_normalize_method
  doc: "Method to choose which prinicipal components\nare removed for data normalization\
    \  (possible\nvalues=\"numPCtoRemove\", \"PVE_mean\",\n\"PVE_contrib\" default=`PVE_mean')"
  type: string
  inputBinding:
    prefix: --PCnormalizeMethod
- id: in_num_pc_to_remove
  doc: "Number of highest principal components to\nfilter out  (default=`20')"
  type: long
  inputBinding:
    prefix: --numPCtoRemove
- id: in_pve_mean_factor
  doc: "Remove all principal components that\nindividually explain more variance than\
    \ this\nfactor times the average (in the original\nPCA-ed data)  (default=`0.7')"
  type: double
  inputBinding:
    prefix: --PVE_mean_factor
- id: in_pve_contrib
  doc: "Remove the smallest number of principal\ncomponents that explain this percent\
    \ of the\nvariance (in the original PCA-ed data)\n(default=`50')"
  type: long
  inputBinding:
    prefix: --PVE_contrib
- id: in_pc_a_files
  doc: "Base file name for 'PCA' *output*, and\n'normalize' *input*"
  type: File
  inputBinding:
    prefix: --PCAfiles
- id: in_var_17
  doc: Matrix is read from --readDepths argument
  type: boolean
  inputBinding:
    prefix: --discover
- id: in_x_cnv
  doc: CNV output file  (default=`-')
  type: File
  inputBinding:
    prefix: --xcnv
- id: in_discover_some_qual_thresh
  doc: "Quality threshold for discovering a CNV in a\nsample  (default=`30')"
  type: long
  inputBinding:
    prefix: --discoverSomeQualThresh
- id: in_posterior_files
  doc: "Base file name for posterior probabilities\noutput files; if not given, and\
    \ --xcnv is not\n'-', this will default to --xcnv argument"
  type: File
  inputBinding:
    prefix: --posteriorFiles
- id: in_var_21
  doc: Matrix is read from --readDepths argument
  type: boolean
  inputBinding:
    prefix: --genotype
- id: in_gx_cnv
  doc: xhmm CNV input file to genotype in 'readDepths'
  type: File
  inputBinding:
    prefix: --gxcnv
- id: in_max_targets_in_subsegment
  doc: "When genotyping sub-segments of input\nintervals, only consider sub-segments\n\
    consisting of this number of targets or fewer\n(default=`30')"
  type: long
  inputBinding:
    prefix: --maxTargetsInSubsegment
- id: in_genotype_qual_threshold_when_no_exact
  doc: "Quality threshold for calling a genotype, used\n*ONLY* when 'gxcnv' does not\
    \ contain the\n'Q_EXACT' field for the interval being\ngenotyped  (default=`20')"
  type: long
  inputBinding:
    prefix: --genotypeQualThresholdWhenNoExact
- id: in_merge_v_cfs
  doc: "--mergeVCF=STRING         VCF file(s) to be merged [must have *IDENTICAL*\n\
    genotyped intervals]\n--mergeVCFlist=STRING     A file containing a list of VCF\
    \ files to be\nmerged [must have *IDENTICAL* genotyped\nintervals]"
  type: boolean
  inputBinding:
    prefix: --mergeVCFs
- id: in_param_file
  doc: (Initial) model parameters file
  type: File
  inputBinding:
    prefix: --paramFile
- id: in_max_normalized_read_depth_val
  doc: "Value at which to cap the absolute value of\n*normalized* input read depth\
    \ values\n('readDepths')  (default=`10')"
  type: long
  inputBinding:
    prefix: --maxNormalizedReadDepthVal
- id: in_max_qual_score
  doc: Value at which to cap the calculated quality
  type: string
  inputBinding:
    prefix: --maxQualScore
- id: in_score_precision
  doc: "Decimal precision of quality scores\n(default=`0')"
  type: long
  inputBinding:
    prefix: --scorePrecision
- id: in_aux_x_cnv
  doc: "Auxiliary CNV output file (may be VERY LARGE in\n'genotype' mode)"
  type: File
  inputBinding:
    prefix: --aux_xcnv
- id: in_aux_upstream_print_t_args
  doc: "Number of targets to print upstream of CNV in\n'auxOutput' file  (default=`2')"
  type: long
  inputBinding:
    prefix: --auxUpstreamPrintTargs
- id: in_aux_downstream_print_t_args
  doc: "Number of targets to print downstream of CNV in\n'auxOutput' file  (default=`2')"
  type: long
  inputBinding:
    prefix: --auxDownstreamPrintTargs
- id: in_orig_read_depths
  doc: "Matrix of unnormalized read-depths to use for\nCNV annotation, where rows\
    \ (samples) and\ncolumns (targets) are labeled"
  type: string
  inputBinding:
    prefix: --origReadDepths
- id: in_keep_sample_ids
  doc: File containing a list of samples to be
  type: File
  inputBinding:
    prefix: --keepSampleIDs
- id: in_vcf
  doc: Genotyped CNV output VCF file  (default=`-')
  type: File
  inputBinding:
    prefix: --vcf
- id: in_print_hmm
  doc: "Mode: transition\nPrint HMM transition matrix for user-requested genomic distances\n\
    --transition\n"
  type: boolean
  inputBinding:
    prefix: --printHMM
- id: in_process_filter_center
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
- id: in_scores
  doc: (default=`99')
  type: string
  inputBinding:
    position: 0
- id: in_analyzed
  doc: "Options for modes: 'genotype', 'mergeVCFs':"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_matrix
  doc: Read-depth matrix output file  (default=`-')
  type: File
  outputBinding:
    glob: $(inputs.in_output_matrix)
- id: out_normalize_output
  doc: "Normalized read-depth matrix output file\n(default=`-')"
  type: File
  outputBinding:
    glob: $(inputs.in_normalize_output)
- id: out_x_cnv
  doc: CNV output file  (default=`-')
  type: File
  outputBinding:
    glob: $(inputs.in_x_cnv)
- id: out_posterior_files
  doc: "Base file name for posterior probabilities\noutput files; if not given, and\
    \ --xcnv is not\n'-', this will default to --xcnv argument"
  type: File
  outputBinding:
    glob: $(inputs.in_posterior_files)
- id: out_aux_x_cnv
  doc: "Auxiliary CNV output file (may be VERY LARGE in\n'genotype' mode)"
  type: File
  outputBinding:
    glob: $(inputs.in_aux_x_cnv)
- id: out_vcf
  doc: Genotyped CNV output VCF file  (default=`-')
  type: File
  outputBinding:
    glob: $(inputs.in_vcf)
cwlVersion: v1.1
baseCommand:
- xhmm
