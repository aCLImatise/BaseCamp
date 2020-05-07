class: CommandLineTool
id: mango_submit.cwl
inputs:
- id: parquet_disable_dictionary
  doc: ': Disable dictionary encoding (default: false)'
  type: boolean
  inputBinding:
    prefix: -parquet_disable_dictionary
- id: parquet_logging_level
  doc: ': Parquet logging level (default = severe) (default: SEVERE)'
  type: string
  inputBinding:
    prefix: -parquet_logging_level
- id: parquet_page_size
  doc: ': Parquet page size (default = 1mb) (default: 1048576)'
  type: string
  inputBinding:
    prefix: -parquet_page_size
- id: port
  doc: ': The port to bind to for visualization. The default is 8080. (default: 8080)'
  type: string
  inputBinding:
    prefix: -port
- id: prefetch_size
  doc: ': Bp to prefetch in executors. (default: 10000)'
  type: string
  inputBinding:
    prefix: -prefetchSize
- id: preload
  doc: ': Chromosomes to prefetch, separated by commas (,).'
  type: string
  inputBinding:
    prefix: -preload
- id: print_metrics
  doc: ': Print metrics to the log on completion (default: false)'
  type: boolean
  inputBinding:
    prefix: -print_metrics
- id: reads
  doc: ': A list of reads files to view, separated by commas (,)'
  type: string
  inputBinding:
    prefix: -reads
- id: repartition
  doc: ': Repartitions data to default number of partitions. (default: false)'
  type: boolean
  inputBinding:
    prefix: -repartition
- id: test
  doc: ': For debugging purposes. (default: false)'
  type: boolean
  inputBinding:
    prefix: -test
- id: variants
  doc: ': A list of variants files to view, separated by commas (,). Vcf files require
    a corresponding tbi index.'
  type: string
  inputBinding:
    prefix: -variants
outputs: []
cwlVersion: v1.1
baseCommand:
- mango-submit
