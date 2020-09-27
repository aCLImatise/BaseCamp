class: CommandLineTool
id: mango_submit.cwl
inputs:
- id: in_coverage
  doc: ': A list of coverage files to view, separated by commas (,)'
  type: string
  inputBinding:
    prefix: -coverage
- id: in_debug_front_end
  doc: ": For debugging purposes. Sets front end in source code to avoid\nrecompilation.\
    \ (default: false)"
  type: boolean
  inputBinding:
    prefix: -debugFrontend
- id: in_discover
  doc: ': This turns on discovery mode on start up. (default: false)'
  type: boolean
  inputBinding:
    prefix: -discover
- id: in_features
  doc: ': The feature files to view, separated by commas (,)'
  type: string
  inputBinding:
    prefix: -features
- id: in_parquet_is_binned
  doc: ': This turns on binned parquet pre-fetch warmup step (default: false)'
  type: boolean
  inputBinding:
    prefix: -parquetIsBinned
- id: in_parquet_block_size
  doc: ': Parquet block size (default = 128mb) (default: 134217728)'
  type: long
  inputBinding:
    prefix: -parquet_block_size
- id: in_parquet_compression_codec
  doc: '[UNCOMPRESSED | SNAPPY | GZIP | LZO | BROTLI   : Parquet compression codec
    (default: GZIP)'
  type: boolean
  inputBinding:
    prefix: -parquet_compression_codec
- id: in_parquet_disable_dictionary
  doc: ': Disable dictionary encoding (default: false)'
  type: boolean
  inputBinding:
    prefix: -parquet_disable_dictionary
- id: in_parquet_logging_level
  doc: ': Parquet logging level (default = severe) (default: SEVERE)'
  type: string
  inputBinding:
    prefix: -parquet_logging_level
- id: in_parquet_page_size
  doc: ': Parquet page size (default = 1mb) (default: 1048576)'
  type: long
  inputBinding:
    prefix: -parquet_page_size
- id: in_port
  doc: ": The port to bind to for visualization. The default is 8080. (default:\n\
    8080)"
  type: long
  inputBinding:
    prefix: -port
- id: in_prefetch_size
  doc: ': Bp to prefetch in executors. (default: 10000)'
  type: long
  inputBinding:
    prefix: -prefetchSize
- id: in_preload
  doc: ': Chromosomes to prefetch, separated by commas (,).'
  type: string
  inputBinding:
    prefix: -preload
- id: in_print_metrics
  doc: ': Print metrics to the log on completion (default: false)'
  type: boolean
  inputBinding:
    prefix: -print_metrics
- id: in_reads
  doc: ': A list of reads files to view, separated by commas (,)'
  type: string
  inputBinding:
    prefix: -reads
- id: in_repartition
  doc: ': Repartitions data to default number of partitions. (default: false)'
  type: boolean
  inputBinding:
    prefix: -repartition
- id: in_test
  doc: ': For debugging purposes. (default: false)'
  type: boolean
  inputBinding:
    prefix: -test
- id: in_variants
  doc: ": A list of variants files to view, separated by commas (,). Vcf files\nrequire\
    \ a corresponding tbi index.\n"
  type: string
  inputBinding:
    prefix: -variants
- id: in_genome
  doc: ': Path to compressed .genome file. To build a new genome file, run'
  type: string
  inputBinding:
    position: 0
- id: in_bin_slash_make_genome_dot
  doc: '-cacheSize N                                                              :
    Bp to cache on driver. (default: 1000)'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mango-submit
