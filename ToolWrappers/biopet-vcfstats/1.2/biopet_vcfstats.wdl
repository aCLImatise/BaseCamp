version 1.0

task Biopetvcfstats {
  input {
    String? log_level
    File? input_file
    File? reference_file
    File? output_dir
    File? intervals
    String? info_tag
    String? genotype_tag
    String? sample_to_sample_min_depth
    String? binsize
    Int? max_contigs_in_single_job
    Boolean? write_bin_stats
    Int? local_threads
    Boolean? not_write_contig_stats
    Boolean? skip_general
    Boolean? skip_genotype
    Boolean? skip_sample_distributions
    Boolean? skip_sample_compare
    Boolean? repartition
    Boolean? execute_modules_as_jobs
    String? spark_master
    String? spark_executor_memory
    Boolean? spark_config_value
    String vcf_stats
  }
  command <<<
    biopet_vcfstats \
      ~{vcf_stats} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(input_file) then ("--inputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(reference_file) then ("--referenceFile " +  '"' + reference_file + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(intervals) then ("--intervals " +  '"' + intervals + '"') else ""} \
      ~{if defined(info_tag) then ("--infoTag " +  '"' + info_tag + '"') else ""} \
      ~{if defined(genotype_tag) then ("--genotypeTag " +  '"' + genotype_tag + '"') else ""} \
      ~{if defined(sample_to_sample_min_depth) then ("--sampleToSampleMinDepth " +  '"' + sample_to_sample_min_depth + '"') else ""} \
      ~{if defined(binsize) then ("--binSize " +  '"' + binsize + '"') else ""} \
      ~{if defined(max_contigs_in_single_job) then ("--maxContigsInSingleJob " +  '"' + max_contigs_in_single_job + '"') else ""} \
      ~{if (write_bin_stats) then "--writeBinStats" else ""} \
      ~{if defined(local_threads) then ("--localThreads " +  '"' + local_threads + '"') else ""} \
      ~{if (not_write_contig_stats) then "--notWriteContigStats" else ""} \
      ~{if (skip_general) then "--skipGeneral" else ""} \
      ~{if (skip_genotype) then "--skipGenotype" else ""} \
      ~{if (skip_sample_distributions) then "--skipSampleDistributions" else ""} \
      ~{if (skip_sample_compare) then "--skipSampleCompare" else ""} \
      ~{if (repartition) then "--repartition" else ""} \
      ~{if (execute_modules_as_jobs) then "--executeModulesAsJobs" else ""} \
      ~{if defined(spark_master) then ("--sparkMaster " +  '"' + spark_master + '"') else ""} \
      ~{if defined(spark_executor_memory) then ("--sparkExecutorMemory " +  '"' + spark_executor_memory + '"') else ""} \
      ~{if (spark_config_value) then "--sparkConfigValue" else ""}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    input_file: "Input VCF file (required)"
    reference_file: "Fasta reference which was used to call input VCF (required)"
    output_dir: "Path to directory for output (required)"
    intervals: "Path to interval (BED) file (optional)"
    info_tag: "Summarize these info tags"
    genotype_tag: "Summarize these genotype tags"
    sample_to_sample_min_depth: "Minimal depth require to consider sample to sample comparison"
    binsize: "Binsize in estimated base pairs"
    max_contigs_in_single_job: "Max number of bins to be combined, default is 250"
    write_bin_stats: "Write bin statistics. Default False"
    local_threads: "Number of local threads to use"
    not_write_contig_stats: "Number of local threads to use"
    skip_general: "Skipping general stats"
    skip_genotype: "Skipping genotype stats"
    skip_sample_distributions: "Skipping sample distributions stats"
    skip_sample_compare: "Skipping sample compare"
    repartition: "Repartition after reading records (only in spark mode)"
    execute_modules_as_jobs: "Execute modules as jobs (only in spark mode)"
    spark_master: "Spark master to use"
    spark_executor_memory: "Spark executor memory to use"
    spark_config_value: ":<key>=<value>\\nAdd values to the spark config\\n"
    vcf_stats: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}