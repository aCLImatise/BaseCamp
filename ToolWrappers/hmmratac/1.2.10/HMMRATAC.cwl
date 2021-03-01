class: CommandLineTool
id: HMMRATAC.cwl
inputs:
- id: in_bam
  doc: Sorted BAM file containing the ATAC-seq reads
  type: File?
  inputBinding:
    prefix: --bam
- id: in_index
  doc: Index file for the sorted BAM File
  type: File?
  inputBinding:
    prefix: --index
- id: in_genome
  doc: Two column, tab delimited file containing genome size stats
  type: File?
  inputBinding:
    prefix: --genome
- id: in_means
  doc: Comma separated list of initial mean values for the fragment distribution.
    Default = 50,200,400,600
  type: long?
  inputBinding:
    prefix: --means
- id: in_stddev
  doc: Comma separated list of initial standard deviation values for fragment distribution.
    Default = 20,20,20,20
  type: long?
  inputBinding:
    prefix: --stddev
- id: in_frage_m
  doc: Whether to perform EM training on the fragment distribution. Default = True
  type: string?
  inputBinding:
    prefix: --fragem
- id: in_min_mapq
  doc: Minimum mapping quality of reads to keep. Default = 30
  type: long?
  inputBinding:
    prefix: --minmapq
- id: in_upper
  doc: Upper limit on fold change range for choosing training sites. Default = 20
  type: long?
  inputBinding:
    prefix: --upper
- id: in_lower
  doc: Lower limit on fold change range for choosing training sites. Default = 10
  type: long?
  inputBinding:
    prefix: --lower
- id: in_zscore
  doc: Zscored read depth to mask during Viterbi decoding. Default = 100
  type: long?
  inputBinding:
    prefix: --zscore
- id: in_output
  doc: Name for output files. Default = NA
  type: string?
  inputBinding:
    prefix: --output
- id: in_blacklist
  doc: bed file of blacklisted regions to exclude
  type: File?
  inputBinding:
    prefix: --blacklist
- id: in_peaks
  doc: Whether to report peaks in bed format. Default = true
  type: string?
  inputBinding:
    prefix: --peaks
- id: in_k_means
  doc: Number of States in the model. Default = 3. If not k=3, recommend NOT calling
    peaks, use bedgraph
  type: long?
  inputBinding:
    prefix: --kmeans
- id: in_training
  doc: BED file of training regions to use for training model, instead of foldchange
    settings
  type: File?
  inputBinding:
    prefix: --training
- id: in_bed_graph
  doc: Whether to report whole genome bedgraph of all state anntations. Default =
    false
  type: string?
  inputBinding:
    prefix: --bedgraph
- id: in_min_len
  doc: 'Minimum length of open region to call peak. Note: -p , --peaks must be set.
    Default = 200'
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_score
  doc: What type of score system to use for peaks. Can be used for ranking peaks.
    Default = max
  type: long?
  inputBinding:
    prefix: --score
- id: in_bg_score
  doc: 'Whether to add the HMMR score to each state annotation in bedgraph. Note:
    this adds considerable time. Default = False'
  type: string?
  inputBinding:
    prefix: --bgscore
- id: in_trim
  doc: How many signals from the end to trim off (ie starting with tri signal then
    di etc). This may be useful if your data doesn't contain many large fragments.
    Default = 0
  type: long?
  inputBinding:
    prefix: --trim
- id: in_window
  doc: "Size of the bins to split the genome into for Viterbi decoding.\nTo save memory,\
    \ the genome is split into <int> long bins and viterbi decoding occurs across\
    \ each bin.\nDefault = 25000000. Note: For machines with limited memory, it is\
    \ recomended to reduce the size of the bins."
  type: long?
  inputBinding:
    prefix: --window
- id: in_model
  doc: Binary model file (generated from previous HMMR run) to use instead of creating
    new one
  type: File?
  inputBinding:
    prefix: --model
- id: in_model_only
  doc: Whether or not to stop the program after generating model. Default = false
  type: string?
  inputBinding:
    prefix: --modelonly
- id: in_max_train
  doc: Maximum number of training regions to use. Default == 1000
  type: long?
  inputBinding:
    prefix: --maxTrain
- id: in_remove_duplicates
  doc: Whether or not to remove duplicate reads from analysis. Default = true
  type: string?
  inputBinding:
    prefix: --removeDuplicates
- id: in_print_exclude
  doc: Whether to output excluded regions into Output_exclude.bed. Default = false
  type: string?
  inputBinding:
    prefix: --printExclude
- id: in_print_train
  doc: Whether to output training regions into Output_training.bed. Default = true
  type: string?
  inputBinding:
    prefix: --printTrain
- id: in_random_seed
  doc: Seed to set for random sampling of training regions. Default is 10151
  type: long?
  inputBinding:
    prefix: --randomSeed
- id: in_threshold
  doc: threshold for reporting peaks. Only peaks who's score is >= this value will
    be reported.
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HMMRATAC
