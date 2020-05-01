#!/usr/bin/env cwl-runner

baseCommand:
- laagc
class: CommandLineTool
cwlVersion: v1.0
id: laagc
inputs:
- doc: Guide file.
  id: guide
  inputBinding:
    position: 0
  type: string
- doc: Input file.
  id: input
  inputBinding:
    position: 1
  type: string
- doc: RNG seed, modulates reservoir filtering of reads. [42]
  id: rng_seed
  inputBinding:
    prefix: --rngSeed
  type: boolean
- doc: Generate PacBio indicies (*.pbi) for BAM files that don't have them.
  id: generate_bam_index
  inputBinding:
    prefix: --generateBamIndex
  type: boolean
- doc: Ignore PacBio indicies (*.pbi) for BAM files if they exist.
  id: ignore_bam_index
  inputBinding:
    prefix: --ignoreBamIndex
  type: boolean
- doc: Number of threads to use, <= 0 means autodetection. [-1]
  id: num_threads
  inputBinding:
    prefix: --numThreads
  type: boolean
- doc: Path to a model file or directory containing model files.
  id: model_path
  inputBinding:
    prefix: --modelPath
  type: boolean
- doc: Name of chemistry or model to use, overriding default selection.
  id: model_spec
  inputBinding:
    prefix: --modelSpec
  type: boolean
- doc: 'Fasta file of the barcode sequences used, overwriting any names in the DataSet.
    NOTE: Only used to find barcode names'
  id: barcodes
  inputBinding:
    prefix: --barcodes
  type: boolean
- doc: Minimum average barcode score to require of subreads. [26]
  id: min_barcode_score
  inputBinding:
    prefix: --minBarcodeScore
  type: boolean
- doc: Filter input reads by presence of both flanking barcodes.
  id: full_length
  inputBinding:
    prefix: --fullLength
  type: boolean
- doc: Comma-separated list of barcode pairs to analyze, either by name, such as 'lbc1--lbc1',
    or by index, such as '0--0'.
  id: do_bc
  inputBinding:
    prefix: --doBc
  type: boolean
- doc: Disable barcode filtering and treat all data as one sample.
  id: ignore_bc
  inputBinding:
    prefix: --ignoreBc
  type: boolean
- doc: Minimum length of input reads. [3000]
  id: minlength
  inputBinding:
    prefix: --minLength
  type: boolean
- doc: Maximum length of input reads, set 0 to disable. [0]
  id: maxlength
  inputBinding:
    prefix: --maxLength
  type: boolean
- doc: Minimum read score of input reads. [0.75]
  id: min_read_score
  inputBinding:
    prefix: --minReadScore
  type: boolean
- doc: Minimum SNR of input reads. [3.75]
  id: mins_nr
  inputBinding:
    prefix: --minSnr
  type: boolean
- doc: Minimum score of a query alignment to the cluster guide [50]
  id: min_guide_score
  inputBinding:
    prefix: --minGuideScore
  type: boolean
- doc: Minimum span of a query alignment to the cluster guide [500]
  id: min_guide_span
  inputBinding:
    prefix: --minGuideSpan
  type: boolean
- doc: A file of ReadIds, as either Text or Fasta, to allow from the input file. ["None"]
  id: whitelist
  inputBinding:
    prefix: --whitelist
  type: boolean
- doc: Maximum number of input reads to cluster per barcode. [1000]
  id: max_reads
  inputBinding:
    prefix: --maxReads
  type: boolean
- doc: Maximum number of input reads to cluster per barcode. [400]
  id: max_clustering_reads
  inputBinding:
    prefix: --maxClusteringReads
  type: boolean
- doc: Prefer full-length subreads when clustering
  id: full_length_preference
  inputBinding:
    prefix: --fullLengthPreference
  type: boolean
- doc: Only use full-length subreads when clustering
  id: full_length_clustering
  inputBinding:
    prefix: --fullLengthClustering
  type: boolean
- doc: Markov Clustering inflation parameter. [2]
  id: cluster_inflation
  inputBinding:
    prefix: --clusterInflation
  type: boolean
- doc: Markov Clustering loop weight parameter. [0.001]
  id: cluster_loop_weight
  inputBinding:
    prefix: --clusterLoopWeight
  type: boolean
- doc: Skip some high-scoring alignments to disperse the cluster more. [0]
  id: skip_rate
  inputBinding:
    prefix: --skipRate
  type: boolean
- doc: Minimum number reads supporting a cluster before it is reported. [20]
  id: min_cluster_size
  inputBinding:
    prefix: --minClusterSize
  type: boolean
- doc: Only analyze one specified [-1]
  id: do_cluster
  inputBinding:
    prefix: --doCluster
  type: boolean
- doc: Enable the coarse clustering
  id: clustering
  inputBinding:
    prefix: --Clustering
  type: boolean
- doc: Disable the coarse clustering
  id: no_clustering
  inputBinding:
    prefix: --noClustering
  type: boolean
- doc: When splitting, ignore N bases at the ends. Use to prevent excessive splitting
    caused by degenerate primers. [0]
  id: ignore_ends
  inputBinding:
    prefix: --ignoreEnds
  type: boolean
- doc: Maximum number of reads to use for phasing/consensus. [500]
  id: max_phasing_reads
  inputBinding:
    prefix: --maxPhasingReads
  type: boolean
- doc: Minimum score to require of mutations  used for phasing. [20]
  id: min_q_score
  inputBinding:
    prefix: --minQScore
  type: boolean
- doc: Minimum prevalence to require of mutations used for phasing. [0.09]
  id: min_prevalence
  inputBinding:
    prefix: --minPrevalence
  type: boolean
- doc: Minimum number reads favoring the minor phase required to split a haplotype.
    [20]
  id: min_split_reads
  inputBinding:
    prefix: --minSplitReads
  type: boolean
- doc: Minimum fraction of reads favoring the minor phase required to split a haplotype.
    [0.1]
  id: min_split_fraction
  inputBinding:
    prefix: --minSplitFraction
  type: boolean
- doc: Global likelihood improvement required to split a haplotype. [500]
  id: min_split_score
  inputBinding:
    prefix: --minSplitScore
  type: boolean
- doc: Minimum ZScore to allow before adding a read to a haplotype. [-10]
  id: min_zscore
  inputBinding:
    prefix: --minZScore
  type: boolean
- doc: Enable the fine phasing step.
  id: phasing
  inputBinding:
    prefix: --Phasing
  type: boolean
- doc: Disable the fine phasing step.
  id: no_phasing
  inputBinding:
    prefix: --noPhasing
  type: boolean
- doc: Report only the top N consensus sequences for each barcode, set <1 to disable.
    [0]
  id: taken
  inputBinding:
    prefix: --takeN
  type: boolean
- doc: Trim N bases from each end of each consensus. [0]
  id: trim_ends
  inputBinding:
    prefix: --trimEnds
  type: boolean
- doc: Minimum predicted consensus accuracy below which a consensus is called 'noise'.
    [0.95]
  id: min_predicted_accuracy
  inputBinding:
    prefix: --minPredictedAccuracy
  type: boolean
- doc: Minimum score to consider a sequence chimeric. [1]
  id: chimera_score_threshold
  inputBinding:
    prefix: --chimeraScoreThreshold
  type: boolean
- doc: Activate the chimera filter and separate chimeric consensus outputs
  id: chimera_filter
  inputBinding:
    prefix: --ChimeraFilter
  type: boolean
- doc: Deactivate the chimera filter and output all consensus
  id: no_chimera_filter
  inputBinding:
    prefix: --noChimeraFilter
  type: boolean
- doc: Output file to write logging information to
  id: log_file
  inputBinding:
    prefix: --logFile
  type: boolean
- doc: Output file for high-quality results. ["amplicon_analysis.fastq"]
  id: result_file
  inputBinding:
    prefix: --resultFile
  type: boolean
- doc: Output file for low-quality or chimeric results. ["amplicon_analysis_chimeras_noise.fastq"]
  id: junk_file
  inputBinding:
    prefix: --junkFile
  type: boolean
- doc: Output file for summary report. ["amplicon_analysis_summary.csv"]
  id: report_file
  inputBinding:
    prefix: --reportFile
  type: boolean
- doc: Output estimates of input PCR quality based on subread mappings ["amplicon_analysis_input.csv"]
  id: input_report_file
  inputBinding:
    prefix: --inputReportFile
  type: boolean
- doc: Output estimates of sample mixture based on ZMW/subread mappings ["amplicon_analysis_per_locus.csv"]
  id: locus_report_file
  inputBinding:
    prefix: --locusReportFile
  type: boolean
- doc: Output barcode/locus mappings for each subread seen ["amplicon_analysis_whitelist.csv"]
  id: whitelist_report_file
  inputBinding:
    prefix: --whitelistReportFile
  type: boolean
- doc: Output prefix for subreads report. ["amplicon_analysis_subreads"]
  id: sub_reads_report_prefix
  inputBinding:
    prefix: --subreadsReportPrefix
  type: boolean
- doc: Use verbose output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Set log level. ["INFO"]
  id: log_level
  inputBinding:
    prefix: --log-level
  type: boolean
- doc: Emit tool contract.
  id: emit_tool_contract
  inputBinding:
    prefix: --emit-tool-contract
  type: boolean
- doc: Use args from resolved tool contract.
  id: resolved_tool_contract
  inputBinding:
    prefix: --resolved-tool-contract
  type: boolean
