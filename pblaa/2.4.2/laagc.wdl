version 1.0

task Laagc {
  input {
    Boolean? rng_seed
    Boolean? generate_bam_index
    Boolean? ignore_bam_index
    Boolean? num_threads
    Boolean? model_path
    Boolean? model_spec
    Boolean? barcodes
    Boolean? min_barcode_score
    Boolean? full_length
    Boolean? do_bc
    Boolean? ignore_bc
    Boolean? minlength
    Boolean? maxlength
    Boolean? min_read_score
    Boolean? mins_nr
    Boolean? min_guide_score
    Boolean? min_guide_span
    Boolean? whitelist
    Boolean? max_reads
    Boolean? max_clustering_reads
    Boolean? full_length_preference
    Boolean? full_length_clustering
    Boolean? cluster_inflation
    Boolean? cluster_loop_weight
    Boolean? skip_rate
    Boolean? min_cluster_size
    Boolean? do_cluster
    Boolean? clustering
    Boolean? no_clustering
    Boolean? ignore_ends
    Boolean? max_phasing_reads
    Boolean? min_q_score
    Boolean? min_prevalence
    Boolean? min_split_reads
    Boolean? min_split_fraction
    Boolean? min_split_score
    Boolean? min_zscore
    Boolean? phasing
    Boolean? no_phasing
    Boolean? taken
    Boolean? trim_ends
    Boolean? min_predicted_accuracy
    Boolean? chimera_score_threshold
    Boolean? chimera_filter
    Boolean? no_chimera_filter
    Boolean? log_file
    Boolean? result_file
    Boolean? junk_file
    Boolean? report_file
    Boolean? input_report_file
    Boolean? locus_report_file
    Boolean? whitelist_report_file
    Boolean? sub_reads_report_prefix
    Boolean? verbose
    Boolean? log_level
    Boolean? emit_tool_contract
    Boolean? resolved_tool_contract
    String guide
    String input_file
  }
  command <<<
    laagc \
      ~{guide} \
      ~{input_file} \
      ~{true="--rngSeed" false="" rng_seed} \
      ~{true="--generateBamIndex" false="" generate_bam_index} \
      ~{true="--ignoreBamIndex" false="" ignore_bam_index} \
      ~{true="--numThreads" false="" num_threads} \
      ~{true="--modelPath" false="" model_path} \
      ~{true="--modelSpec" false="" model_spec} \
      ~{true="--barcodes" false="" barcodes} \
      ~{true="--minBarcodeScore" false="" min_barcode_score} \
      ~{true="--fullLength" false="" full_length} \
      ~{true="--doBc" false="" do_bc} \
      ~{true="--ignoreBc" false="" ignore_bc} \
      ~{true="--minLength" false="" minlength} \
      ~{true="--maxLength" false="" maxlength} \
      ~{true="--minReadScore" false="" min_read_score} \
      ~{true="--minSnr" false="" mins_nr} \
      ~{true="--minGuideScore" false="" min_guide_score} \
      ~{true="--minGuideSpan" false="" min_guide_span} \
      ~{true="--whitelist" false="" whitelist} \
      ~{true="--maxReads" false="" max_reads} \
      ~{true="--maxClusteringReads" false="" max_clustering_reads} \
      ~{true="--fullLengthPreference" false="" full_length_preference} \
      ~{true="--fullLengthClustering" false="" full_length_clustering} \
      ~{true="--clusterInflation" false="" cluster_inflation} \
      ~{true="--clusterLoopWeight" false="" cluster_loop_weight} \
      ~{true="--skipRate" false="" skip_rate} \
      ~{true="--minClusterSize" false="" min_cluster_size} \
      ~{true="--doCluster" false="" do_cluster} \
      ~{true="--Clustering" false="" clustering} \
      ~{true="--noClustering" false="" no_clustering} \
      ~{true="--ignoreEnds" false="" ignore_ends} \
      ~{true="--maxPhasingReads" false="" max_phasing_reads} \
      ~{true="--minQScore" false="" min_q_score} \
      ~{true="--minPrevalence" false="" min_prevalence} \
      ~{true="--minSplitReads" false="" min_split_reads} \
      ~{true="--minSplitFraction" false="" min_split_fraction} \
      ~{true="--minSplitScore" false="" min_split_score} \
      ~{true="--minZScore" false="" min_zscore} \
      ~{true="--Phasing" false="" phasing} \
      ~{true="--noPhasing" false="" no_phasing} \
      ~{true="--takeN" false="" taken} \
      ~{true="--trimEnds" false="" trim_ends} \
      ~{true="--minPredictedAccuracy" false="" min_predicted_accuracy} \
      ~{true="--chimeraScoreThreshold" false="" chimera_score_threshold} \
      ~{true="--ChimeraFilter" false="" chimera_filter} \
      ~{true="--noChimeraFilter" false="" no_chimera_filter} \
      ~{true="--logFile" false="" log_file} \
      ~{true="--resultFile" false="" result_file} \
      ~{true="--junkFile" false="" junk_file} \
      ~{true="--reportFile" false="" report_file} \
      ~{true="--inputReportFile" false="" input_report_file} \
      ~{true="--locusReportFile" false="" locus_report_file} \
      ~{true="--whitelistReportFile" false="" whitelist_report_file} \
      ~{true="--subreadsReportPrefix" false="" sub_reads_report_prefix} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--emit-tool-contract" false="" emit_tool_contract} \
      ~{true="--resolved-tool-contract" false="" resolved_tool_contract}
  >>>
  parameter_meta {
    rng_seed: "RNG seed, modulates reservoir filtering of reads. [42]"
    generate_bam_index: "Generate PacBio indicies (*.pbi) for BAM files that don't have them."
    ignore_bam_index: "Ignore PacBio indicies (*.pbi) for BAM files if they exist."
    num_threads: "Number of threads to use, <= 0 means autodetection. [-1]"
    model_path: "Path to a model file or directory containing model files."
    model_spec: "Name of chemistry or model to use, overriding default selection."
    barcodes: "Fasta file of the barcode sequences used, overwriting any names in the DataSet. NOTE: Only used to find barcode names"
    min_barcode_score: "Minimum average barcode score to require of subreads. [26]"
    full_length: "Filter input reads by presence of both flanking barcodes."
    do_bc: "Comma-separated list of barcode pairs to analyze, either by name, such as 'lbc1--lbc1', or by index, such as '0--0'."
    ignore_bc: "Disable barcode filtering and treat all data as one sample."
    minlength: "Minimum length of input reads. [3000]"
    maxlength: "Maximum length of input reads, set 0 to disable. [0]"
    min_read_score: "Minimum read score of input reads. [0.75]"
    mins_nr: "Minimum SNR of input reads. [3.75]"
    min_guide_score: "Minimum score of a query alignment to the cluster guide [50]"
    min_guide_span: "Minimum span of a query alignment to the cluster guide [500]"
    whitelist: "A file of ReadIds, as either Text or Fasta, to allow from the input file. [\"None\"]"
    max_reads: "Maximum number of input reads to cluster per barcode. [1000]"
    max_clustering_reads: "Maximum number of input reads to cluster per barcode. [400]"
    full_length_preference: "Prefer full-length subreads when clustering"
    full_length_clustering: "Only use full-length subreads when clustering"
    cluster_inflation: "Markov Clustering inflation parameter. [2]"
    cluster_loop_weight: "Markov Clustering loop weight parameter. [0.001]"
    skip_rate: "Skip some high-scoring alignments to disperse the cluster more. [0]"
    min_cluster_size: "Minimum number reads supporting a cluster before it is reported. [20]"
    do_cluster: "Only analyze one specified [-1]"
    clustering: "Enable the coarse clustering"
    no_clustering: "Disable the coarse clustering"
    ignore_ends: "When splitting, ignore N bases at the ends. Use to prevent excessive splitting caused by degenerate primers. [0]"
    max_phasing_reads: "Maximum number of reads to use for phasing/consensus. [500]"
    min_q_score: "Minimum score to require of mutations  used for phasing. [20]"
    min_prevalence: "Minimum prevalence to require of mutations used for phasing. [0.09]"
    min_split_reads: "Minimum number reads favoring the minor phase required to split a haplotype. [20]"
    min_split_fraction: "Minimum fraction of reads favoring the minor phase required to split a haplotype. [0.1]"
    min_split_score: "Global likelihood improvement required to split a haplotype. [500]"
    min_zscore: "Minimum ZScore to allow before adding a read to a haplotype. [-10]"
    phasing: "Enable the fine phasing step."
    no_phasing: "Disable the fine phasing step."
    taken: "Report only the top N consensus sequences for each barcode, set <1 to disable. [0]"
    trim_ends: "Trim N bases from each end of each consensus. [0]"
    min_predicted_accuracy: "Minimum predicted consensus accuracy below which a consensus is called 'noise'. [0.95]"
    chimera_score_threshold: "Minimum score to consider a sequence chimeric. [1]"
    chimera_filter: "Activate the chimera filter and separate chimeric consensus outputs"
    no_chimera_filter: "Deactivate the chimera filter and output all consensus"
    log_file: "Output file to write logging information to"
    result_file: "Output file for high-quality results. [\"amplicon_analysis.fastq\"]"
    junk_file: "Output file for low-quality or chimeric results. [\"amplicon_analysis_chimeras_noise.fastq\"]"
    report_file: "Output file for summary report. [\"amplicon_analysis_summary.csv\"]"
    input_report_file: "Output estimates of input PCR quality based on subread mappings [\"amplicon_analysis_input.csv\"]"
    locus_report_file: "Output estimates of sample mixture based on ZMW/subread mappings [\"amplicon_analysis_per_locus.csv\"]"
    whitelist_report_file: "Output barcode/locus mappings for each subread seen [\"amplicon_analysis_whitelist.csv\"]"
    sub_reads_report_prefix: "Output prefix for subreads report. [\"amplicon_analysis_subreads\"]"
    verbose: "Use verbose output."
    log_level: "Set log level. [\"INFO\"]"
    emit_tool_contract: "Emit tool contract."
    resolved_tool_contract: "Use args from resolved tool contract."
    guide: "Guide file."
    input_file: "Input file."
  }
}