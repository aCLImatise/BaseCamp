version 1.0

task MakeGenome {
  input {
    Int? parquet_block_size
    Boolean? parquet_compression_codec
    Boolean? parquet_disable_dictionary
    String? parquet_logging_level
    Int? parquet_page_size
    Boolean? print_metrics
    String genome
    String output_path
  }
  command <<<
    make_genome \
      ~{genome} \
      ~{output_path} \
      ~{if defined(parquet_block_size) then ("-parquet_block_size " +  '"' + parquet_block_size + '"') else ""} \
      ~{if (parquet_compression_codec) then "-parquet_compression_codec" else ""} \
      ~{if (parquet_disable_dictionary) then "-parquet_disable_dictionary" else ""} \
      ~{if defined(parquet_logging_level) then ("-parquet_logging_level " +  '"' + parquet_logging_level + '"') else ""} \
      ~{if defined(parquet_page_size) then ("-parquet_page_size " +  '"' + parquet_page_size + '"') else ""} \
      ~{if (print_metrics) then "-print_metrics" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parquet_block_size: ": Parquet block size (default = 128mb) (default: 134217728)"
    parquet_compression_codec: "[UNCOMPRESSED | SNAPPY | GZIP | LZO | BROTLI   : Parquet compression codec (default: GZIP)"
    parquet_disable_dictionary: ": Disable dictionary encoding (default: false)"
    parquet_logging_level: ": Parquet logging level (default = severe) (default: SEVERE)"
    parquet_page_size: ": Parquet page size (default = 1mb) (default: 1048576)"
    print_metrics: ": Print metrics to the log on completion (default: false)"
    genome: ": Genome name in UCSC (ie. hg19, mm10, etc)."
    output_path: ": Output path to save .genome file"
  }
  output {
    File out_stdout = stdout()
  }
}