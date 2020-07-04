version 1.0

task HMMRATAC {
  input {
    Boolean? _bam_bam
    Boolean? _index_bai
    Boolean? _genome_genomefile
    File? model
    String? model_only
    Int? max_train
    String? remove_duplicates
    String? print_exclude
    String? print_train
    String? random_seed
    String? threshold
    String? jar
    String java
  }
  command <<<
    HMMRATAC \
      ~{java} \
      ~{true="-b" false="" _bam_bam} \
      ~{true="-i" false="" _index_bai} \
      ~{true="-g" false="" _genome_genomefile} \
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
}