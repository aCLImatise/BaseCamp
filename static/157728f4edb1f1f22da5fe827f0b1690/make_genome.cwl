class: CommandLineTool
id: make_genome.cwl
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
- id: print_metrics
  doc: ': Print metrics to the log on completion (default: false)'
  type: boolean
  inputBinding:
    prefix: -print_metrics
outputs: []
cwlVersion: v1.1
baseCommand:
- make_genome
