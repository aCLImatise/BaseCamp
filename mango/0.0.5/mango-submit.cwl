#!/usr/bin/env cwl-runner

baseCommand:
- mango-submit
class: CommandLineTool
cwlVersion: v1.0
id: mango-submit
inputs:
- doc: ': Disable dictionary encoding (default: false)'
  id: parquet_disable_dictionary
  inputBinding:
    prefix: -parquet_disable_dictionary
  type: boolean
- doc: ': Parquet logging level (default = severe) (default: SEVERE)'
  id: parquet_logging_level
  inputBinding:
    prefix: -parquet_logging_level
  type: string
- doc: ': Parquet page size (default = 1mb) (default: 1048576)'
  id: parquet_page_size
  inputBinding:
    prefix: -parquet_page_size
  type: string
- doc: ': The port to bind to for visualization. The default is 8080. (default: 8080)'
  id: port
  inputBinding:
    prefix: -port
  type: string
- doc: ': Bp to prefetch in executors. (default: 10000)'
  id: prefetch_size
  inputBinding:
    prefix: -prefetchSize
  type: string
- doc: ': Chromosomes to prefetch, separated by commas (,).'
  id: preload
  inputBinding:
    prefix: -preload
  type: string
- doc: ': Print metrics to the log on completion (default: false)'
  id: print_metrics
  inputBinding:
    prefix: -print_metrics
  type: boolean
- doc: ': A list of reads files to view, separated by commas (,)'
  id: reads
  inputBinding:
    prefix: -reads
  type: string
- doc: ': Repartitions data to default number of partitions. (default: false)'
  id: repartition
  inputBinding:
    prefix: -repartition
  type: boolean
- doc: ': For debugging purposes. (default: false)'
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: ': A list of variants files to view, separated by commas (,). Vcf files require
    a corresponding tbi index.'
  id: variants
  inputBinding:
    prefix: -variants
  type: string
