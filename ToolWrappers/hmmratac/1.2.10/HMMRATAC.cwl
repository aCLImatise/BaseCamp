class: CommandLineTool
id: HMMRATAC.cwl
inputs:
- id: in__bam_bam
  doc: ', --bam <BAM> Sorted BAM file containing the ATAC-seq reads'
  type: boolean
  inputBinding:
    prefix: -b
- id: in__index_bai
  doc: ', --index <BAI> Index file for the sorted BAM File'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__genome_genomefile
  doc: ', --genome <GenomeFile> Two column, tab delimited file containing genome size
    stats'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__means_list
  doc: ', --means <double> Comma separated list of initial mean values for the fragment
    distribution. Default = 50,200,400,600'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__stddev_list
  doc: ', --stddev <double> Comma separated list of initial standard deviation values
    for fragment distribution. Default = 20,20,20,20'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__fragem_true
  doc: ', --fragem <true || false> Whether to perform EM training on the fragment
    distribution. Default = True'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__minmapq_int
  doc: ', --minmapq <int> Minimum mapping quality of reads to keep. Default = 30'
  type: boolean
  inputBinding:
    prefix: -q
- id: in__upper_upper
  doc: ', --upper <int> Upper limit on fold change range for choosing training sites.
    Default = 20'
  type: boolean
  inputBinding:
    prefix: -u
- id: in__lower_lower
  doc: ', --lower <int> Lower limit on fold change range for choosing training sites.
    Default = 10'
  type: boolean
  inputBinding:
    prefix: -l
- id: in__zscore_int
  doc: ', --zscore <int> Zscored read depth to mask during Viterbi decoding. Default
    = 100'
  type: boolean
  inputBinding:
    prefix: -z
- id: in__output_string
  doc: ', --output <String> Name for output files. Default = NA'
  type: boolean
  inputBinding:
    prefix: -o
- id: in__blacklist_bedfile
  doc: ', --blacklist <BED_File> bed file of blacklisted regions to exclude'
  type: boolean
  inputBinding:
    prefix: -e
- id: in__peaks_true
  doc: ', --peaks <true || false> Whether to report peaks in bed format. Default =
    true'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__kmeans_int
  doc: ', --kmeans <int> Number of States in the model. Default = 3. If not k=3, recommend
    NOT calling peaks, use bedgraph'
  type: boolean
  inputBinding:
    prefix: -k
- id: in__training_file
  doc: ', --training <BED_File> BED file of training regions to use for training model,
    instead of foldchange settings'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_bed_graph
  doc: Whether to report whole genome bedgraph of all state anntations. Default =
    false
  type: string
  inputBinding:
    prefix: --bedgraph
- id: in_min_len
  doc: 'Minimum length of open region to call peak. Note: -p , --peaks must be set.
    Default = 200'
  type: long
  inputBinding:
    prefix: --minlen
- id: in_score
  doc: What type of score system to use for peaks. Can be used for ranking peaks.
    Default = max
  type: long
  inputBinding:
    prefix: --score
- id: in_bg_score
  doc: 'Whether to add the HMMR score to each state annotation in bedgraph. Note:
    this adds considerable time. Default = False'
  type: string
  inputBinding:
    prefix: --bgscore
- id: in_trim
  doc: How many signals from the end to trim off (ie starting with tri signal then
    di etc). This may be useful if your data doesn't contain many large fragments.
    Default = 0
  type: long
  inputBinding:
    prefix: --trim
- id: in_window
  doc: "Size of the bins to split the genome into for Viterbi decoding.\nTo save memory,\
    \ the genome is split into <int> long bins and viterbi decoding occurs across\
    \ each bin.\nDefault = 25000000. Note: For machines with limited memory, it is\
    \ recomended to reduce the size of the bins."
  type: long
  inputBinding:
    prefix: --window
- id: in_model
  doc: Binary model file (generated from previous HMMR run) to use instead of creating
    new one
  type: File
  inputBinding:
    prefix: --model
- id: in_model_only
  doc: Whether or not to stop the program after generating model. Default = false
  type: string
  inputBinding:
    prefix: --modelonly
- id: in_max_train
  doc: Maximum number of training regions to use. Default == 1000
  type: long
  inputBinding:
    prefix: --maxTrain
- id: in_remove_duplicates
  doc: Whether or not to remove duplicate reads from analysis. Default = true
  type: string
  inputBinding:
    prefix: --removeDuplicates
- id: in_print_exclude
  doc: Whether to output excluded regions into Output_exclude.bed. Default = false
  type: string
  inputBinding:
    prefix: --printExclude
- id: in_print_train
  doc: Whether to output training regions into Output_training.bed. Default = true
  type: string
  inputBinding:
    prefix: --printTrain
- id: in_random_seed
  doc: Seed to set for random sampling of training regions. Default is 10151
  type: long
  inputBinding:
    prefix: --randomSeed
- id: in_threshold
  doc: threshold for reporting peaks. Only peaks who's score is >= this value will
    be reported.
  type: string
  inputBinding:
    prefix: --threshold
- id: in_jar
  doc: ''
  type: string
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
cwlVersion: v1.1
baseCommand:
- HMMRATAC
