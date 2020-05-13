version 1.0

task MakeGenome {
  input {
    Boolean parquetParquetDisableDictionary
    String parquetParquetLoggingLevel
    String parquetParquetPageSize
    Boolean printPrintMetrics
  }
  command <<<
    make_genome \
      ~{true="-parquet_disable_dictionary" false="" parquetParquetDisableDictionary} \
      ~{if defined(parquetParquetLoggingLevel) then ("-parquet_logging_level " +  '"' + parquetParquetLoggingLevel + '"') else ""} \
      ~{if defined(parquetParquetPageSize) then ("-parquet_page_size " +  '"' + parquetParquetPageSize + '"') else ""} \
      ~{true="-print_metrics" false="" printPrintMetrics}
  >>>
}