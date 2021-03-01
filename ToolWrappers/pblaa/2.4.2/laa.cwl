class: CommandLineTool
id: laa.cwl
inputs:
- id: in_rng_seed
  doc: "RNG seed, modulates reservoir filtering of reads.\n[42]"
  type: boolean?
  inputBinding:
    prefix: --rngSeed
- id: in_generate_bam_index
  doc: "Generate PacBio indicies (*.pbi) for BAM files that\ndon't have them."
  type: boolean?
  inputBinding:
    prefix: --generateBamIndex
- id: in_ignore_bam_index
  doc: "Ignore PacBio indicies (*.pbi) for BAM files if\nthey exist."
  type: boolean?
  inputBinding:
    prefix: --ignoreBamIndex
- id: in_num_threads
  doc: "Number of threads to use, <= 0 means autodetection.\n[-1]"
  type: boolean?
  inputBinding:
    prefix: --numThreads
- id: in_model_path
  doc: Path to a model file or directory containing model
  type: boolean?
  inputBinding:
    prefix: --modelPath
- id: in_barcodes
  doc: "Fasta file of the barcode sequences used,\noverwriting any names in the DataSet.\
    \ NOTE: Only\nused to find barcode names"
  type: boolean?
  inputBinding:
    prefix: --barcodes
- id: in_min_barcode_score
  doc: "Minimum average barcode score to require of\nsubreads. [26]"
  type: boolean?
  inputBinding:
    prefix: --minBarcodeScore
- id: in_full_length
  doc: Filter input reads by presence of both flanking
  type: boolean?
  inputBinding:
    prefix: --fullLength
- id: in_ignore_bc
  doc: Disable barcode filtering and treat all data as one
  type: boolean?
  inputBinding:
    prefix: --ignoreBc
- id: in_minlength
  doc: Minimum length of input reads. [3000]
  type: boolean?
  inputBinding:
    prefix: --minLength
- id: in_maxlength
  doc: "Maximum length of input reads, set 0 to disable.\n[0]"
  type: boolean?
  inputBinding:
    prefix: --maxLength
- id: in_min_read_score
  doc: Minimum read score of input reads. [0.75]
  type: boolean?
  inputBinding:
    prefix: --minReadScore
- id: in_mins_nr
  doc: Minimum SNR of input reads. [3.75]
  type: boolean?
  inputBinding:
    prefix: --minSnr
- id: in_cluster_guide
  doc: Path to a fasta file of sequences to use for guided
  type: boolean?
  inputBinding:
    prefix: --clusterGuide
- id: in_min_guide_span
  doc: "Minimum span of a query alignment to the cluster\nguide [500]"
  type: boolean?
  inputBinding:
    prefix: --minGuideSpan
- id: in_whitelist
  doc: "A file of ReadIds, as either Text or Fasta, to\nallow from the input file.\
    \ [\"None\"]"
  type: boolean?
  inputBinding:
    prefix: --whitelist
- id: in_max_reads
  doc: "Maximum number of input reads to cluster per\nbarcode. [2000]"
  type: boolean?
  inputBinding:
    prefix: --maxReads
- id: in_max_clustering_reads
  doc: "Maximum number of input reads to cluster per\nbarcode. [400]"
  type: boolean?
  inputBinding:
    prefix: --maxClusteringReads
- id: in_full_length_preference
  doc: Prefer full-length subreads when clustering
  type: boolean?
  inputBinding:
    prefix: --fullLengthPreference
- id: in_full_length_clustering
  doc: Only use full-length subreads when clustering
  type: boolean?
  inputBinding:
    prefix: --fullLengthClustering
- id: in_cluster_inflation
  doc: Markov Clustering inflation parameter. [2]
  type: boolean?
  inputBinding:
    prefix: --clusterInflation
- id: in_cluster_loop_weight
  doc: Markov Clustering loop weight parameter. [0.001]
  type: boolean?
  inputBinding:
    prefix: --clusterLoopWeight
- id: in_skip_rate
  doc: "Skip some high-scoring alignments to disperse the\ncluster more. [0]"
  type: boolean?
  inputBinding:
    prefix: --skipRate
- id: in_min_cluster_size
  doc: "Minimum number reads supporting a cluster before it\nis reported. [20]"
  type: boolean?
  inputBinding:
    prefix: --minClusterSize
- id: in_do_cluster
  doc: Only analyze one specified [-1]
  type: boolean?
  inputBinding:
    prefix: --doCluster
- id: in_enable_coarse_clustering
  doc: Enable the coarse clustering
  type: boolean?
  inputBinding:
    prefix: --Clustering
- id: in_no_clustering
  doc: Disable the coarse clustering
  type: boolean?
  inputBinding:
    prefix: --noClustering
- id: in_ignore_ends
  doc: "When splitting, ignore N bases at the ends. Use to\nprevent excessive splitting\
    \ caused by degenerate\nprimers. [0]"
  type: boolean?
  inputBinding:
    prefix: --ignoreEnds
- id: in_max_phasing_reads
  doc: "Maximum number of reads to use for\nphasing/consensus. [500]"
  type: boolean?
  inputBinding:
    prefix: --maxPhasingReads
- id: in_min_q_score
  doc: "Minimum score to require of mutations  used for\nphasing. [20]"
  type: boolean?
  inputBinding:
    prefix: --minQScore
- id: in_min_prevalence
  doc: "Minimum prevalence to require of mutations used for\nphasing. [0.09]"
  type: boolean?
  inputBinding:
    prefix: --minPrevalence
- id: in_min_split_reads
  doc: "Minimum number reads favoring the minor phase\nrequired to split a haplotype.\
    \ [20]"
  type: boolean?
  inputBinding:
    prefix: --minSplitReads
- id: in_min_split_fraction
  doc: "Minimum fraction of reads favoring the minor phase\nrequired to split a haplotype.\
    \ [0.1]"
  type: boolean?
  inputBinding:
    prefix: --minSplitFraction
- id: in_min_split_score
  doc: "Global likelihood improvement required to split a\nhaplotype. [500]"
  type: boolean?
  inputBinding:
    prefix: --minSplitScore
- id: in_min_zscore
  doc: "Minimum ZScore to allow before adding a read to a\nhaplotype. [-10]"
  type: boolean?
  inputBinding:
    prefix: --minZScore
- id: in_phasing
  doc: Enable the fine phasing step.
  type: boolean?
  inputBinding:
    prefix: --Phasing
- id: in_no_phasing
  doc: Disable the fine phasing step.
  type: boolean?
  inputBinding:
    prefix: --noPhasing
- id: in_taken
  doc: "Report only the top N consensus sequences for each\nbarcode, set <1 to disable.\
    \ [0]"
  type: boolean?
  inputBinding:
    prefix: --takeN
- id: in_trim_ends
  doc: Trim N bases from each end of each consensus. [0]
  type: boolean?
  inputBinding:
    prefix: --trimEnds
- id: in_min_predicted_accuracy
  doc: "Minimum predicted consensus accuracy below which a\nconsensus is called 'noise'.\
    \ [0.95]"
  type: boolean?
  inputBinding:
    prefix: --minPredictedAccuracy
- id: in_chimera_score_threshold
  doc: Minimum score to consider a sequence chimeric. [1]
  type: boolean?
  inputBinding:
    prefix: --chimeraScoreThreshold
- id: in_chimera_filter
  doc: "Activate the chimera filter and separate chimeric\nconsensus outputs"
  type: boolean?
  inputBinding:
    prefix: --ChimeraFilter
- id: in_no_chimera_filter
  doc: Deactivate the chimera filter and output all
  type: boolean?
  inputBinding:
    prefix: --noChimeraFilter
- id: in_log_file
  doc: Output file to write logging information to
  type: File?
  inputBinding:
    prefix: --logFile
- id: in_result_file
  doc: "Output file for high-quality results.\n[\"amplicon_analysis.fastq\"]"
  type: File?
  inputBinding:
    prefix: --resultFile
- id: in_junk_file
  doc: "Output file for low-quality or chimeric results.\n[\"amplicon_analysis_chimeras_noise.fastq\"\
    ]"
  type: File?
  inputBinding:
    prefix: --junkFile
- id: in_report_file
  doc: "Output file for summary report.\n[\"amplicon_analysis_summary.csv\"]"
  type: File?
  inputBinding:
    prefix: --reportFile
- id: in_input_report_file
  doc: "Output estimates of input PCR quality based on\nsubread mappings [\"amplicon_analysis_input.csv\"\
    ]"
  type: boolean?
  inputBinding:
    prefix: --inputReportFile
- id: in_locus_report_file
  doc: "Output estimates of sample mixture based on\nZMW/subread mappings\n[\"amplicon_analysis_per_locus.csv\"\
    ]"
  type: boolean?
  inputBinding:
    prefix: --locusReportFile
- id: in_whitelist_report_file
  doc: "Output barcode/locus mappings for each subread seen\n[\"amplicon_analysis_whitelist.csv\"\
    ]"
  type: boolean?
  inputBinding:
    prefix: --whitelistReportFile
- id: in_sub_reads_report_prefix
  doc: "Output prefix for subreads report.\n[\"amplicon_analysis_subreads\"]"
  type: boolean?
  inputBinding:
    prefix: --subreadsReportPrefix
- id: in_verbose
  doc: Use verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_level
  doc: Set log level. ["INFO"]
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_emit_tool_contract
  doc: Emit tool contract.
  type: boolean?
  inputBinding:
    prefix: --emit-tool-contract
- id: in_resolved_tool_contract
  doc: Use args from resolved tool contract.
  type: boolean?
  inputBinding:
    prefix: --resolved-tool-contract
- id: in_three_bsd
  doc: 'General Options:'
  type: long
  inputBinding:
    position: 0
- id: in_files_dot
  doc: -m,--modelSpec            Name of chemistry or model to use, overriding
  type: string
  inputBinding:
    position: 1
- id: in_barcodes_dot
  doc: --doBc                    Comma-separated list of barcode pairs to analyze,
  type: string
  inputBinding:
    position: 0
- id: in_sample_dot
  doc: 'Data Filtering Options:'
  type: string
  inputBinding:
    position: 0
- id: in__minguidescore_minimum
  doc: --minGuideScore           Minimum score of a query alignment to the cluster
  type: string
  inputBinding:
    position: 1
- id: in_consensus
  doc: 'Result Options:'
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: Input file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: Output file to write logging information to
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
- id: out_result_file
  doc: "Output file for high-quality results.\n[\"amplicon_analysis.fastq\"]"
  type: File?
  outputBinding:
    glob: $(inputs.in_result_file)
- id: out_junk_file
  doc: "Output file for low-quality or chimeric results.\n[\"amplicon_analysis_chimeras_noise.fastq\"\
    ]"
  type: File?
  outputBinding:
    glob: $(inputs.in_junk_file)
- id: out_report_file
  doc: "Output file for summary report.\n[\"amplicon_analysis_summary.csv\"]"
  type: File?
  outputBinding:
    glob: $(inputs.in_report_file)
hints: []
cwlVersion: v1.1
baseCommand:
- laa
