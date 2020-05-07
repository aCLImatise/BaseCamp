class: CommandLineTool
id: laagc.cwl
inputs:
- id: guide
  doc: Guide file.
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Input file.
  type: string
  inputBinding:
    position: 1
- id: rng_seed
  doc: RNG seed, modulates reservoir filtering of reads. [42]
  type: boolean
  inputBinding:
    prefix: --rngSeed
- id: generate_bam_index
  doc: Generate PacBio indicies (*.pbi) for BAM files that don't have them.
  type: boolean
  inputBinding:
    prefix: --generateBamIndex
- id: ignore_bam_index
  doc: Ignore PacBio indicies (*.pbi) for BAM files if they exist.
  type: boolean
  inputBinding:
    prefix: --ignoreBamIndex
- id: num_threads
  doc: Number of threads to use, <= 0 means autodetection. [-1]
  type: boolean
  inputBinding:
    prefix: --numThreads
- id: model_path
  doc: Path to a model file or directory containing model files.
  type: boolean
  inputBinding:
    prefix: --modelPath
- id: model_spec
  doc: Name of chemistry or model to use, overriding default selection.
  type: boolean
  inputBinding:
    prefix: --modelSpec
- id: barcodes
  doc: 'Fasta file of the barcode sequences used, overwriting any names in the DataSet.
    NOTE: Only used to find barcode names'
  type: boolean
  inputBinding:
    prefix: --barcodes
- id: min_barcode_score
  doc: Minimum average barcode score to require of subreads. [26]
  type: boolean
  inputBinding:
    prefix: --minBarcodeScore
- id: full_length
  doc: Filter input reads by presence of both flanking barcodes.
  type: boolean
  inputBinding:
    prefix: --fullLength
- id: do_bc
  doc: Comma-separated list of barcode pairs to analyze, either by name, such as 'lbc1--lbc1',
    or by index, such as '0--0'.
  type: boolean
  inputBinding:
    prefix: --doBc
- id: ignore_bc
  doc: Disable barcode filtering and treat all data as one sample.
  type: boolean
  inputBinding:
    prefix: --ignoreBc
- id: minlength
  doc: Minimum length of input reads. [3000]
  type: boolean
  inputBinding:
    prefix: --minLength
- id: maxlength
  doc: Maximum length of input reads, set 0 to disable. [0]
  type: boolean
  inputBinding:
    prefix: --maxLength
- id: min_read_score
  doc: Minimum read score of input reads. [0.75]
  type: boolean
  inputBinding:
    prefix: --minReadScore
- id: mins_nr
  doc: Minimum SNR of input reads. [3.75]
  type: boolean
  inputBinding:
    prefix: --minSnr
- id: min_guide_score
  doc: Minimum score of a query alignment to the cluster guide [50]
  type: boolean
  inputBinding:
    prefix: --minGuideScore
- id: min_guide_span
  doc: Minimum span of a query alignment to the cluster guide [500]
  type: boolean
  inputBinding:
    prefix: --minGuideSpan
- id: whitelist
  doc: A file of ReadIds, as either Text or Fasta, to allow from the input file. ["None"]
  type: boolean
  inputBinding:
    prefix: --whitelist
- id: max_reads
  doc: Maximum number of input reads to cluster per barcode. [1000]
  type: boolean
  inputBinding:
    prefix: --maxReads
- id: max_clustering_reads
  doc: Maximum number of input reads to cluster per barcode. [400]
  type: boolean
  inputBinding:
    prefix: --maxClusteringReads
- id: full_length_preference
  doc: Prefer full-length subreads when clustering
  type: boolean
  inputBinding:
    prefix: --fullLengthPreference
- id: full_length_clustering
  doc: Only use full-length subreads when clustering
  type: boolean
  inputBinding:
    prefix: --fullLengthClustering
- id: cluster_inflation
  doc: Markov Clustering inflation parameter. [2]
  type: boolean
  inputBinding:
    prefix: --clusterInflation
- id: cluster_loop_weight
  doc: Markov Clustering loop weight parameter. [0.001]
  type: boolean
  inputBinding:
    prefix: --clusterLoopWeight
- id: skip_rate
  doc: Skip some high-scoring alignments to disperse the cluster more. [0]
  type: boolean
  inputBinding:
    prefix: --skipRate
- id: min_cluster_size
  doc: Minimum number reads supporting a cluster before it is reported. [20]
  type: boolean
  inputBinding:
    prefix: --minClusterSize
- id: do_cluster
  doc: Only analyze one specified [-1]
  type: boolean
  inputBinding:
    prefix: --doCluster
- id: clustering
  doc: Enable the coarse clustering
  type: boolean
  inputBinding:
    prefix: --Clustering
- id: no_clustering
  doc: Disable the coarse clustering
  type: boolean
  inputBinding:
    prefix: --noClustering
- id: ignore_ends
  doc: When splitting, ignore N bases at the ends. Use to prevent excessive splitting
    caused by degenerate primers. [0]
  type: boolean
  inputBinding:
    prefix: --ignoreEnds
- id: max_phasing_reads
  doc: Maximum number of reads to use for phasing/consensus. [500]
  type: boolean
  inputBinding:
    prefix: --maxPhasingReads
- id: min_q_score
  doc: Minimum score to require of mutations  used for phasing. [20]
  type: boolean
  inputBinding:
    prefix: --minQScore
- id: min_prevalence
  doc: Minimum prevalence to require of mutations used for phasing. [0.09]
  type: boolean
  inputBinding:
    prefix: --minPrevalence
- id: min_split_reads
  doc: Minimum number reads favoring the minor phase required to split a haplotype.
    [20]
  type: boolean
  inputBinding:
    prefix: --minSplitReads
- id: min_split_fraction
  doc: Minimum fraction of reads favoring the minor phase required to split a haplotype.
    [0.1]
  type: boolean
  inputBinding:
    prefix: --minSplitFraction
- id: min_split_score
  doc: Global likelihood improvement required to split a haplotype. [500]
  type: boolean
  inputBinding:
    prefix: --minSplitScore
- id: min_zscore
  doc: Minimum ZScore to allow before adding a read to a haplotype. [-10]
  type: boolean
  inputBinding:
    prefix: --minZScore
- id: phasing
  doc: Enable the fine phasing step.
  type: boolean
  inputBinding:
    prefix: --Phasing
- id: no_phasing
  doc: Disable the fine phasing step.
  type: boolean
  inputBinding:
    prefix: --noPhasing
- id: taken
  doc: Report only the top N consensus sequences for each barcode, set <1 to disable.
    [0]
  type: boolean
  inputBinding:
    prefix: --takeN
- id: trim_ends
  doc: Trim N bases from each end of each consensus. [0]
  type: boolean
  inputBinding:
    prefix: --trimEnds
- id: min_predicted_accuracy
  doc: Minimum predicted consensus accuracy below which a consensus is called 'noise'.
    [0.95]
  type: boolean
  inputBinding:
    prefix: --minPredictedAccuracy
- id: chimera_score_threshold
  doc: Minimum score to consider a sequence chimeric. [1]
  type: boolean
  inputBinding:
    prefix: --chimeraScoreThreshold
- id: chimera_filter
  doc: Activate the chimera filter and separate chimeric consensus outputs
  type: boolean
  inputBinding:
    prefix: --ChimeraFilter
- id: no_chimera_filter
  doc: Deactivate the chimera filter and output all consensus
  type: boolean
  inputBinding:
    prefix: --noChimeraFilter
- id: log_file
  doc: Output file to write logging information to
  type: boolean
  inputBinding:
    prefix: --logFile
- id: result_file
  doc: Output file for high-quality results. ["amplicon_analysis.fastq"]
  type: boolean
  inputBinding:
    prefix: --resultFile
- id: junk_file
  doc: Output file for low-quality or chimeric results. ["amplicon_analysis_chimeras_noise.fastq"]
  type: boolean
  inputBinding:
    prefix: --junkFile
- id: report_file
  doc: Output file for summary report. ["amplicon_analysis_summary.csv"]
  type: boolean
  inputBinding:
    prefix: --reportFile
- id: input_report_file
  doc: Output estimates of input PCR quality based on subread mappings ["amplicon_analysis_input.csv"]
  type: boolean
  inputBinding:
    prefix: --inputReportFile
- id: locus_report_file
  doc: Output estimates of sample mixture based on ZMW/subread mappings ["amplicon_analysis_per_locus.csv"]
  type: boolean
  inputBinding:
    prefix: --locusReportFile
- id: whitelist_report_file
  doc: Output barcode/locus mappings for each subread seen ["amplicon_analysis_whitelist.csv"]
  type: boolean
  inputBinding:
    prefix: --whitelistReportFile
- id: sub_reads_report_prefix
  doc: Output prefix for subreads report. ["amplicon_analysis_subreads"]
  type: boolean
  inputBinding:
    prefix: --subreadsReportPrefix
- id: verbose
  doc: Use verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: log_level
  doc: Set log level. ["INFO"]
  type: boolean
  inputBinding:
    prefix: --log-level
- id: emit_tool_contract
  doc: Emit tool contract.
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: resolved_tool_contract
  doc: Use args from resolved tool contract.
  type: boolean
  inputBinding:
    prefix: --resolved-tool-contract
outputs: []
cwlVersion: v1.1
baseCommand:
- laagc
