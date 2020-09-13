version 1.0

task RNAlienStatisticsbin {
  input {
    File? alien_covariance_model_path
    File? alien_rna_z_path
    File? alien_rna_code_path
    File? alien_cm_stat_path
    File? rf_am_covariance_model_path
    File? rf_am_fast_a_file_path
    File? alien_fast_a_file_path
    String? rf_am_model_name
    String? rf_am_model_id
    Int? rf_am_threshold
    Int? alien_threshold
    Int? database_size
    File? output_directory_path
    Int? benchmark_index
    Boolean? link_scores
    Boolean? verbose
    Boolean? quiet
    String families
    String cm_compare
  }
  command <<<
    RNAlienStatistics_bin \
      ~{families} \
      ~{cm_compare} \
      ~{if defined(alien_covariance_model_path) then ("--aliencovariancemodelpath " +  '"' + alien_covariance_model_path + '"') else ""} \
      ~{if defined(alien_rna_z_path) then ("--alienrnazpath " +  '"' + alien_rna_z_path + '"') else ""} \
      ~{if defined(alien_rna_code_path) then ("--alienrnacodepath " +  '"' + alien_rna_code_path + '"') else ""} \
      ~{if defined(alien_cm_stat_path) then ("--aliencmstatpath " +  '"' + alien_cm_stat_path + '"') else ""} \
      ~{if defined(rf_am_covariance_model_path) then ("--rfamcovariancemodelpath " +  '"' + rf_am_covariance_model_path + '"') else ""} \
      ~{if defined(rf_am_fast_a_file_path) then ("--rfamfastafilepath " +  '"' + rf_am_fast_a_file_path + '"') else ""} \
      ~{if defined(alien_fast_a_file_path) then ("--alienfastafilepath " +  '"' + alien_fast_a_file_path + '"') else ""} \
      ~{if defined(rf_am_model_name) then ("--rfammodelname " +  '"' + rf_am_model_name + '"') else ""} \
      ~{if defined(rf_am_model_id) then ("--rfammodelid " +  '"' + rf_am_model_id + '"') else ""} \
      ~{if defined(rf_am_threshold) then ("--rfamthreshold " +  '"' + rf_am_threshold + '"') else ""} \
      ~{if defined(alien_threshold) then ("--alienthreshold " +  '"' + alien_threshold + '"') else ""} \
      ~{if defined(database_size) then ("--databasesize " +  '"' + database_size + '"') else ""} \
      ~{if defined(output_directory_path) then ("--outputdirectorypath " +  '"' + output_directory_path + '"') else ""} \
      ~{if defined(benchmark_index) then ("--benchmarkindex " +  '"' + benchmark_index + '"') else ""} \
      ~{if (link_scores) then "--linkscores" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    alien_covariance_model_path: "Path to alienCovarianceModelPath"
    alien_rna_z_path: "Path to alienRNAzResult"
    alien_rna_code_path: "Path to alienRNAcodeResult"
    alien_cm_stat_path: "Path to aliencmstatResult"
    rf_am_covariance_model_path: "Path to rfamCovarianceModelPath"
    rf_am_fast_a_file_path: "Path to rfamFastaFile"
    alien_fast_a_file_path: "Path to alienFastaFile"
    rf_am_model_name: "Rfam model name"
    rf_am_model_id: "Rfam model id"
    rf_am_threshold: "Bitscore threshold for Rfam model hits\\non Alien fasta, default 20"
    alien_threshold: "Bitscore threshold for RNAlien model\\nhits on Rfam fasta, default 20"
    database_size: "Cmsearch database size in mega bases.\\ndefault not set"
    output_directory_path: "Path to output directory"
    benchmark_index: "Index used to identify sRNA tagged RNA"
    link_scores: "Triggers computation of linkscores via"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
    families: "-s --thresholdselection=ITEM        Selection method, (bitscore, evalue),"
    cm_compare: "-c --threads=INT                    Number of available cpu slots/cores,"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_path = "${in_output_directory_path}"
  }
}