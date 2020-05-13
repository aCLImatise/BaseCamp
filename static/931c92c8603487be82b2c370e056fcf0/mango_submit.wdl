version 1.0

task MangoSubmit {
  input {
    Boolean parquetParquetDisableDictionary
    String parquetParquetLoggingLevel
    String parquetParquetPageSize
    String portPort
    String prefetchPrefetchSize
    String preloadPreload
    Boolean printPrintMetrics
    String readsReads
    Boolean repartitionRepartition
    Boolean testTest
    String variantsVariants
  }
  command <<<
    mango-submit \
      ~{true="-parquet_disable_dictionary" false="" parquetParquetDisableDictionary} \
      ~{if defined(parquetParquetLoggingLevel) then ("-parquet_logging_level " +  '"' + parquetParquetLoggingLevel + '"') else ""} \
      ~{if defined(parquetParquetPageSize) then ("-parquet_page_size " +  '"' + parquetParquetPageSize + '"') else ""} \
      ~{if defined(portPort) then ("-port " +  '"' + portPort + '"') else ""} \
      ~{if defined(prefetchPrefetchSize) then ("-prefetchSize " +  '"' + prefetchPrefetchSize + '"') else ""} \
      ~{if defined(preloadPreload) then ("-preload " +  '"' + preloadPreload + '"') else ""} \
      ~{true="-print_metrics" false="" printPrintMetrics} \
      ~{if defined(readsReads) then ("-reads " +  '"' + readsReads + '"') else ""} \
      ~{true="-repartition" false="" repartitionRepartition} \
      ~{true="-test" false="" testTest} \
      ~{if defined(variantsVariants) then ("-variants " +  '"' + variantsVariants + '"') else ""}
  >>>
}