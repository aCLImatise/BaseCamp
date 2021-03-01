version 1.0

task HMMRATAC {
  input {
    File? bam
    File? index
    File? genome
    Int? means
    Int? stddev
    String? frage_m
    Int? min_mapq
    Int? upper
    Int? lower
    Int? zscore
    String? name_output_files
    File? blacklist
    String? peaks
    Int? k_means
    File? training
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
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(means) then ("--means " +  '"' + means + '"') else ""} \
      ~{if defined(stddev) then ("--stddev " +  '"' + stddev + '"') else ""} \
      ~{if defined(frage_m) then ("--fragem " +  '"' + frage_m + '"') else ""} \
      ~{if defined(min_mapq) then ("--minmapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(zscore) then ("--zscore " +  '"' + zscore + '"') else ""} \
      ~{if defined(name_output_files) then ("--output " +  '"' + name_output_files + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(peaks) then ("--peaks " +  '"' + peaks + '"') else ""} \
      ~{if defined(k_means) then ("--kmeans " +  '"' + k_means + '"') else ""} \
      ~{if defined(training) then ("--training " +  '"' + training + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "Sorted BAM file containing the ATAC-seq reads"
    index: "Index file for the sorted BAM File"
    genome: "Two column, tab delimited file containing genome size stats"
    means: "Comma separated list of initial mean values for the fragment distribution. Default = 50,200,400,600"
    stddev: "Comma separated list of initial standard deviation values for fragment distribution. Default = 20,20,20,20"
    frage_m: "Whether to perform EM training on the fragment distribution. Default = True"
    min_mapq: "Minimum mapping quality of reads to keep. Default = 30"
    upper: "Upper limit on fold change range for choosing training sites. Default = 20"
    lower: "Lower limit on fold change range for choosing training sites. Default = 10"
    zscore: "Zscored read depth to mask during Viterbi decoding. Default = 100"
    name_output_files: "Name for output files. Default = NA"
    blacklist: "bed file of blacklisted regions to exclude"
    peaks: "Whether to report peaks in bed format. Default = true"
    k_means: "Number of States in the model. Default = 3. If not k=3, recommend NOT calling peaks, use bedgraph"
    training: "BED file of training regions to use for training model, instead of foldchange settings"
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