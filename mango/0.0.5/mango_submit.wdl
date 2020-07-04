version 1.0

task MangoSubmit {
  input {
    Boolean? parquet_disable_dictionary
    String? parquet_logging_level
    String? parquet_page_size
    String? port
    String? prefetch_size
    String? preload
    Boolean? print_metrics
    String? reads
    Boolean? repartition
    Boolean? test
    String? variants
  }
  command <<<
    mango-submit \
      ~{true="-parquet_disable_dictionary" false="" parquet_disable_dictionary} \
      ~{if defined(parquet_logging_level) then ("-parquet_logging_level " +  '"' + parquet_logging_level + '"') else ""} \
      ~{if defined(parquet_page_size) then ("-parquet_page_size " +  '"' + parquet_page_size + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(prefetch_size) then ("-prefetchSize " +  '"' + prefetch_size + '"') else ""} \
      ~{if defined(preload) then ("-preload " +  '"' + preload + '"') else ""} \
      ~{true="-print_metrics" false="" print_metrics} \
      ~{if defined(reads) then ("-reads " +  '"' + reads + '"') else ""} \
      ~{true="-repartition" false="" repartition} \
      ~{true="-test" false="" test} \
      ~{if defined(variants) then ("-variants " +  '"' + variants + '"') else ""}
  >>>
  parameter_meta {
    parquet_disable_dictionary: ": Disable dictionary encoding (default: false)"
    parquet_logging_level: ": Parquet logging level (default = severe) (default: SEVERE)"
    parquet_page_size: ": Parquet page size (default = 1mb) (default: 1048576)"
    port: ": The port to bind to for visualization. The default is 8080. (default: 8080)"
    prefetch_size: ": Bp to prefetch in executors. (default: 10000)"
    preload: ": Chromosomes to prefetch, separated by commas (,)."
    print_metrics: ": Print metrics to the log on completion (default: false)"
    reads: ": A list of reads files to view, separated by commas (,)"
    repartition: ": Repartitions data to default number of partitions. (default: false)"
    test: ": For debugging purposes. (default: false)"
    variants: ": A list of variants files to view, separated by commas (,). Vcf files require a corresponding tbi index."
  }
}