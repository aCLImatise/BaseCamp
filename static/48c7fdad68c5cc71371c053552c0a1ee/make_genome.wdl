version 1.0

task MakeGenome {
  input {
    Boolean? parquet_disable_dictionary
    String? parquet_logging_level
    String? parquet_page_size
    Boolean? print_metrics
  }
  command <<<
    make_genome \
      ~{true="-parquet_disable_dictionary" false="" parquet_disable_dictionary} \
      ~{if defined(parquet_logging_level) then ("-parquet_logging_level " +  '"' + parquet_logging_level + '"') else ""} \
      ~{if defined(parquet_page_size) then ("-parquet_page_size " +  '"' + parquet_page_size + '"') else ""} \
      ~{true="-print_metrics" false="" print_metrics}
  >>>
  parameter_meta {
    parquet_disable_dictionary: ": Disable dictionary encoding (default: false)"
    parquet_logging_level: ": Parquet logging level (default = severe) (default: SEVERE)"
    parquet_page_size: ": Parquet page size (default = 1mb) (default: 1048576)"
    print_metrics: ": Print metrics to the log on completion (default: false)"
  }
}