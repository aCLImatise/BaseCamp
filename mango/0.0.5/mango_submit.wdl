version 1.0

task Mangosubmit {
  input {
    String? coverage
    Boolean? debug_front_end
    Boolean? discover
    String? features
    Boolean? parquet_is_binned
    Int? parquet_block_size
    Boolean? parquet_compression_codec
    Boolean? parquet_disable_dictionary
    String? parquet_logging_level
    Int? parquet_page_size
    Int? port
    Int? prefetch_size
    String? preload
    Boolean? print_metrics
    String? reads
    Boolean? repartition
    Boolean? test
    String? variants
    String genome
    String bin_slash_make_genome_dot
  }
  command <<<
    mango_submit \
      ~{genome} \
      ~{bin_slash_make_genome_dot} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if (debug_front_end) then "-debugFrontend" else ""} \
      ~{if (discover) then "-discover" else ""} \
      ~{if defined(features) then ("-features " +  '"' + features + '"') else ""} \
      ~{if (parquet_is_binned) then "-parquetIsBinned" else ""} \
      ~{if defined(parquet_block_size) then ("-parquet_block_size " +  '"' + parquet_block_size + '"') else ""} \
      ~{if (parquet_compression_codec) then "-parquet_compression_codec" else ""} \
      ~{if (parquet_disable_dictionary) then "-parquet_disable_dictionary" else ""} \
      ~{if defined(parquet_logging_level) then ("-parquet_logging_level " +  '"' + parquet_logging_level + '"') else ""} \
      ~{if defined(parquet_page_size) then ("-parquet_page_size " +  '"' + parquet_page_size + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(prefetch_size) then ("-prefetchSize " +  '"' + prefetch_size + '"') else ""} \
      ~{if defined(preload) then ("-preload " +  '"' + preload + '"') else ""} \
      ~{if (print_metrics) then "-print_metrics" else ""} \
      ~{if defined(reads) then ("-reads " +  '"' + reads + '"') else ""} \
      ~{if (repartition) then "-repartition" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if defined(variants) then ("-variants " +  '"' + variants + '"') else ""}
  >>>
  parameter_meta {
    coverage: ": A list of coverage files to view, separated by commas (,)"
    debug_front_end: ": For debugging purposes. Sets front end in source code to avoid\\nrecompilation. (default: false)"
    discover: ": This turns on discovery mode on start up. (default: false)"
    features: ": The feature files to view, separated by commas (,)"
    parquet_is_binned: ": This turns on binned parquet pre-fetch warmup step (default: false)"
    parquet_block_size: ": Parquet block size (default = 128mb) (default: 134217728)"
    parquet_compression_codec: "[UNCOMPRESSED | SNAPPY | GZIP | LZO | BROTLI   : Parquet compression codec (default: GZIP)"
    parquet_disable_dictionary: ": Disable dictionary encoding (default: false)"
    parquet_logging_level: ": Parquet logging level (default = severe) (default: SEVERE)"
    parquet_page_size: ": Parquet page size (default = 1mb) (default: 1048576)"
    port: ": The port to bind to for visualization. The default is 8080. (default:\\n8080)"
    prefetch_size: ": Bp to prefetch in executors. (default: 10000)"
    preload: ": Chromosomes to prefetch, separated by commas (,)."
    print_metrics: ": Print metrics to the log on completion (default: false)"
    reads: ": A list of reads files to view, separated by commas (,)"
    repartition: ": Repartitions data to default number of partitions. (default: false)"
    test: ": For debugging purposes. (default: false)"
    variants: ": A list of variants files to view, separated by commas (,). Vcf files\\nrequire a corresponding tbi index.\\n"
    genome: ": Path to compressed .genome file. To build a new genome file, run"
    bin_slash_make_genome_dot: "-cacheSize N                                                              : Bp to cache on driver. (default: 1000)"
  }
  output {
    File out_stdout = stdout()
  }
}