version 1.0

task HMMRATAC {
  input {
    Boolean? _bam_bam
    Boolean? _index_bai
    Boolean? _genome_genomefile
    Boolean? _means_list
    Boolean? _stddev_list
    Boolean? _fragem_true
    Boolean? _minmapq_int
    Boolean? _upper_upper
    Boolean? _lower_lower
    Boolean? _zscore_int
    Boolean? _output_string
    Boolean? _blacklist_bedfile
    Boolean? _peaks_true
    Boolean? _kmeans_int
    Boolean? _training_file
    String? bed_graph
    Int? min_len
    Int? score
    String? bg_score
    Int? trim
    Int? window
    File? model
    String? model_only
    Int? max_train
    String? remove_duplicates
    String? print_exclude
    String? print_train
    Int? random_seed
    String? threshold
    String? jar
    String java
  }
  command <<<
    HMMRATAC \
      ~{java} \
      ~{if (_bam_bam) then "-b" else ""} \
      ~{if (_index_bai) then "-i" else ""} \
      ~{if (_genome_genomefile) then "-g" else ""} \
      ~{if (_means_list) then "-m" else ""} \
      ~{if (_stddev_list) then "-s" else ""} \
      ~{if (_fragem_true) then "-f" else ""} \
      ~{if (_minmapq_int) then "-q" else ""} \
      ~{if (_upper_upper) then "-u" else ""} \
      ~{if (_lower_lower) then "-l" else ""} \
      ~{if (_zscore_int) then "-z" else ""} \
      ~{if (_output_string) then "-o" else ""} \
      ~{if (_blacklist_bedfile) then "-e" else ""} \
      ~{if (_peaks_true) then "-p" else ""} \
      ~{if (_kmeans_int) then "-k" else ""} \
      ~{if (_training_file) then "-t" else ""} \
      ~{if defined(bed_graph) then ("--bedgraph " +  '"' + bed_graph + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(bg_score) then ("--bgscore " +  '"' + bg_score + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(model_only) then ("--modelonly " +  '"' + model_only + '"') else ""} \
      ~{if defined(max_train) then ("--maxTrain " +  '"' + max_train + '"') else ""} \
      ~{if defined(remove_duplicates) then ("--removeDuplicates " +  '"' + remove_duplicates + '"') else ""} \
      ~{if defined(print_exclude) then ("--printExclude " +  '"' + print_exclude + '"') else ""} \
      ~{if defined(print_train) then ("--printTrain " +  '"' + print_train + '"') else ""} \
      ~{if defined(random_seed) then ("--randomSeed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    _bam_bam: ", --bam <BAM> Sorted BAM file containing the ATAC-seq reads"
    _index_bai: ", --index <BAI> Index file for the sorted BAM File"
    _genome_genomefile: ", --genome <GenomeFile> Two column, tab delimited file containing genome size stats"
    _means_list: ", --means <double> Comma separated list of initial mean values for the fragment distribution. Default = 50,200,400,600"
    _stddev_list: ", --stddev <double> Comma separated list of initial standard deviation values for fragment distribution. Default = 20,20,20,20"
    _fragem_true: ", --fragem <true || false> Whether to perform EM training on the fragment distribution. Default = True"
    _minmapq_int: ", --minmapq <int> Minimum mapping quality of reads to keep. Default = 30"
    _upper_upper: ", --upper <int> Upper limit on fold change range for choosing training sites. Default = 20"
    _lower_lower: ", --lower <int> Lower limit on fold change range for choosing training sites. Default = 10"
    _zscore_int: ", --zscore <int> Zscored read depth to mask during Viterbi decoding. Default = 100"
    _output_string: ", --output <String> Name for output files. Default = NA"
    _blacklist_bedfile: ", --blacklist <BED_File> bed file of blacklisted regions to exclude"
    _peaks_true: ", --peaks <true || false> Whether to report peaks in bed format. Default = true"
    _kmeans_int: ", --kmeans <int> Number of States in the model. Default = 3. If not k=3, recommend NOT calling peaks, use bedgraph"
    _training_file: ", --training <BED_File> BED file of training regions to use for training model, instead of foldchange settings"
    bed_graph: "Whether to report whole genome bedgraph of all state anntations. Default = false"
    min_len: "Minimum length of open region to call peak. Note: -p , --peaks must be set. Default = 200"
    score: "What type of score system to use for peaks. Can be used for ranking peaks. Default = max"
    bg_score: "Whether to add the HMMR score to each state annotation in bedgraph. Note: this adds considerable time. Default = False"
    trim: "How many signals from the end to trim off (ie starting with tri signal then di etc). This may be useful if your data doesn't contain many large fragments. Default = 0"
    window: "Size of the bins to split the genome into for Viterbi decoding.\\nTo save memory, the genome is split into <int> long bins and viterbi decoding occurs across each bin.\\nDefault = 25000000. Note: For machines with limited memory, it is recomended to reduce the size of the bins."
    model: "Binary model file (generated from previous HMMR run) to use instead of creating new one"
    model_only: "Whether or not to stop the program after generating model. Default = false"
    max_train: "Maximum number of training regions to use. Default == 1000"
    remove_duplicates: "Whether or not to remove duplicate reads from analysis. Default = true"
    print_exclude: "Whether to output excluded regions into Output_exclude.bed. Default = false"
    print_train: "Whether to output training regions into Output_training.bed. Default = true"
    random_seed: "Seed to set for random sampling of training regions. Default is 10151"
    threshold: "threshold for reporting peaks. Only peaks who's score is >= this value will be reported."
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}