class: CommandLineTool
id: xhmm.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden  options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: reference_fast_a
  doc: Reference FASTA file (MUST have .fai index  file)
  type: string
  inputBinding:
    prefix: --referenceFASTA
- id: read_depths
  doc: Matrix of *input* read-depths, where rows  (samples) and columns (targets)
    are labeled   (default=`-')
  type: string
  inputBinding:
    prefix: --readDepths
- id: prepare_targets
  doc: --targets=STRING          Input targets lists --mergedTargets=STRING    Output
    targets list  (default=`-')
  type: boolean
  inputBinding:
    prefix: --prepareTargets
- id: merge_g_atk_depths
  doc: "--GATKdepths=STRING       GATK sample_interval_summary output file(s) to \
    \ be merged [must have *IDENTICAL* target  lists] --GATKdepthsList=STRING   A\
    \ file containing a list of GATK  sample_interval_summary output files to be \
    \ merged [must have *IDENTICAL* target lists] --sampleIDmap=STRING      File containing\
    \ mappings of sample names to new  sample names (in columns designated by  fromID,\
    \ toID) --fromID=INT              Column number of OLD sample IDs to map   (default=`1')\
    \ --toID=INT                Column number of NEW sample IDs to map   (default=`2')\
    \ --columnSuffix=STRING     Suffix of columns to be used for merging [where  columns\
    \ are in the form: SAMPLE +  columnSuffix]  (default=`_mean_cvg') --rdPrecision=INT\
    \         Decimal precision of read depths output   (default=`2') --outputTargetsBySamples\
    \  Output targets x samples (instead of samples x  targets)  (default=off)"
  type: boolean
  inputBinding:
    prefix: --mergeGATKdepths
- id: matrix
  doc: --excludeTargets=STRING   File(s) of targets to exclude --excludeChromosomeTargets=STRING
    Target chromosome(s) to exclude --excludeSamples=STRING   File(s) of samples to
    exclude --minTargetSize=INT       Minimum size of target (in bp) to process   (default=`0')
    --maxTargetSize=INT       Maximum size of target (in bp) to process --minMeanTargetRD=DOUBLE  Minimum
    per-target mean RD to require for  target to be processed --maxMeanTargetRD=DOUBLE  Maximum
    per-target mean RD to require for  target to be processed --minSdTargetRD=DOUBLE    Minimum
    per-target standard deviation of RD to  require for target to be processed   (default=`0')
    --maxSdTargetRD=DOUBLE    Maximum per-target standard deviation of RD to  require
    for target to be processed --minMeanSampleRD=DOUBLE  Minimum per-sample mean RD
    to require for  sample to be processed --maxMeanSampleRD=DOUBLE  Maximum per-sample
    mean RD to require for  sample to be processed --minSdSampleRD=DOUBLE    Minimum
    per-sample standard deviation of RD to  require for sample to be processed   (default=`0')
    --maxSdSampleRD=DOUBLE    Maximum per-sample standard deviation of RD to  require
    for sample to be processed --scaleDataBySum          After any filtering, scale
    read-depth matrix  values by sample- or target- sums (as per  --scaleDataBySumType)
    [i.e., divide by row or  column sums], but multiply by factor  specificied by
    --scaleDataBySumFactor   (default=off) --scaleDataBySumType=ENUM If --scaleDataBySum
    given, then scale the data  within this dimension  (possible  values="target",
    "sample") --scaleDataBySumFactor=DOUBLE If --scaleDataBySum given, then divide
    by  appropriate sum (but multiply by this factor)  (default=`1e6') --log10=DOUBLE            After
    any filtering and optional scaling steps  (but before any optional centering steps),  convert
    the matrix to log10 values. To deal  with non-positive and small positive values,  a
    truncation and then pseudocount approach is  taken. Specifically, denote the original  matrix
    value as x and this parameter's  pseudocount value as v (say, 0.5). The matrix  value
    used is then log10(max(x, 0) + v) --centerData              Output sample- or
    target- centered read-depth  matrix (as per --centerType)  (default=off) --centerType=ENUM         If
    --centerData given, then center the data  around this dimension  (possible  values="target",
    "sample") --zScoreData              If --centerData given, then additionally  normalize
    by standard deviation (outputting  z-scores)  (default=off) --outputExcludedTargets=STRING
    File in which to output targets excluded by  some criterion --outputExcludedSamples=STRING
    File in which to output samples excluded by  some criterion
  type: boolean
  inputBinding:
    prefix: --matrix
- id: output_matrix
  doc: Read-depth matrix output file  (default=`-')
  type: string
  inputBinding:
    prefix: --outputMatrix
- id: pc_a
  doc: Matrix is read from --readDepths argument;  normalization factors sent to --PCAfiles  argument
  type: boolean
  inputBinding:
    prefix: --PCA
- id: pc_a_save_memory
  doc: "[=STRING] Should XHMM save memory by storing some of the  intermediate PCA\
    \ matrices as temporary files  on disk?  (default=`')"
  type: boolean
  inputBinding:
    prefix: --PCA_saveMemory
- id: normalize
  doc: Matrix is read from --readDepths argument;  normalization factors read from
    --PCAfiles  argument
  type: boolean
  inputBinding:
    prefix: --normalize
- id: normalize_output
  doc: Normalized read-depth matrix output file   (default=`-')
  type: string
  inputBinding:
    prefix: --normalizeOutput
- id: pc_normalize_method
  doc: Method to choose which prinicipal components  are removed for data normalization  (possible  values="numPCtoRemove",
    "PVE_mean",  "PVE_contrib" default=`PVE_mean')
  type: string
  inputBinding:
    prefix: --PCnormalizeMethod
- id: num_pc_to_remove
  doc: Number of highest principal components to  filter out  (default=`20')
  type: long
  inputBinding:
    prefix: --numPCtoRemove
- id: pve_mean_factor
  doc: Remove all principal components that  individually explain more variance than
    this  factor times the average (in the original  PCA-ed data)  (default=`0.7')
  type: string
  inputBinding:
    prefix: --PVE_mean_factor
- id: pve_contrib
  doc: Remove the smallest number of principal  components that explain this percent
    of the  variance (in the original PCA-ed data)   (default=`50')
  type: string
  inputBinding:
    prefix: --PVE_contrib
- id: pc_a_files
  doc: Base file name for 'PCA' *output*, and  'normalize' *input*
  type: string
  inputBinding:
    prefix: --PCAfiles
- id: discover
  doc: Matrix is read from --readDepths argument
  type: boolean
  inputBinding:
    prefix: --discover
- id: x_cnv
  doc: CNV output file  (default=`-')
  type: string
  inputBinding:
    prefix: --xcnv
- id: discover_some_qual_thresh
  doc: Quality threshold for discovering a CNV in a  sample  (default=`30')
  type: string
  inputBinding:
    prefix: --discoverSomeQualThresh
- id: posterior_files
  doc: Base file name for posterior probabilities  output files; if not given, and
    --xcnv is not  '-', this will default to --xcnv argument
  type: string
  inputBinding:
    prefix: --posteriorFiles
- id: genotype
  doc: Matrix is read from --readDepths argument
  type: boolean
  inputBinding:
    prefix: --genotype
- id: gx_cnv
  doc: xhmm CNV input file to genotype in 'readDepths'  sample
  type: string
  inputBinding:
    prefix: --gxcnv
- id: sub_segments
  doc: In addition to genotyping the intervals  specified in gxcnv, genotype all sub-segments  of
    these intervals (with  maxTargetsInSubsegment or fewer targets)   (default=off)
  type: boolean
  inputBinding:
    prefix: --subsegments
- id: max_targets_in_subsegment
  doc: When genotyping sub-segments of input  intervals, only consider sub-segments  consisting
    of this number of targets or fewer  (default=`30')
  type: long
  inputBinding:
    prefix: --maxTargetsInSubsegment
- id: genotype_qual_threshold_when_no_exact
  doc: Quality threshold for calling a genotype, used  *ONLY* when 'gxcnv' does not
    contain the  'Q_EXACT' field for the interval being  genotyped  (default=`20')
  type: string
  inputBinding:
    prefix: --genotypeQualThresholdWhenNoExact
- id: merge_vcf
  doc: VCF file(s) to be merged [must have *IDENTICAL*  genotyped intervals]
  type: string
  inputBinding:
    prefix: --mergeVCF
- id: merge_vcf_list
  doc: A file containing a list of VCF files to be  merged [must have *IDENTICAL*
    genotyped  intervals]
  type: string
  inputBinding:
    prefix: --mergeVCFlist
- id: param_file
  doc: (Initial) model parameters file
  type: string
  inputBinding:
    prefix: --paramFile
- id: max_normalized_read_depth_val
  doc: Value at which to cap the absolute value of  *normalized* input read depth
    values  ('readDepths')  (default=`10')
  type: string
  inputBinding:
    prefix: --maxNormalizedReadDepthVal
- id: max_qual_score
  doc: Value at which to cap the calculated quality  scores  (default=`99')
  type: string
  inputBinding:
    prefix: --maxQualScore
- id: score_precision
  doc: Decimal precision of quality scores   (default=`0')
  type: long
  inputBinding:
    prefix: --scorePrecision
- id: aux_x_cnv
  doc: Auxiliary CNV output file (may be VERY LARGE in  'genotype' mode)
  type: string
  inputBinding:
    prefix: --aux_xcnv
- id: aux_upstream_print_t_args
  doc: Number of targets to print upstream of CNV in  'auxOutput' file  (default=`2')
  type: long
  inputBinding:
    prefix: --auxUpstreamPrintTargs
- id: aux_downstream_print_t_args
  doc: Number of targets to print downstream of CNV in  'auxOutput' file  (default=`2')
  type: long
  inputBinding:
    prefix: --auxDownstreamPrintTargs
- id: orig_read_depths
  doc: Matrix of unnormalized read-depths to use for  CNV annotation, where rows (samples)
    and  columns (targets) are labeled
  type: string
  inputBinding:
    prefix: --origReadDepths
- id: keep_sample_ids
  doc: File containing a list of samples to be  analyzed
  type: string
  inputBinding:
    prefix: --keepSampleIDs
- id: vcf
  doc: Genotyped CNV output VCF file  (default=`-')
  type: string
  inputBinding:
    prefix: --vcf
outputs: []
cwlVersion: v1.1
baseCommand:
- xhmm
