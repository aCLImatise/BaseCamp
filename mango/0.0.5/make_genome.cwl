#!/usr/bin/env cwl-runner

baseCommand:
- make_genome
class: CommandLineTool
cwlVersion: v1.0
id: make_genome
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
- doc: ': Print metrics to the log on completion (default: false)'
  id: print_metrics
  inputBinding:
    prefix: -print_metrics
  type: boolean
