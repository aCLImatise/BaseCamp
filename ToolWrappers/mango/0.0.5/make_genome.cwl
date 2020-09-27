class: CommandLineTool
id: make_genome.cwl
inputs:
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
- id: in_print_metrics
  doc: ': Print metrics to the log on completion (default: false)'
  type: boolean
  inputBinding:
    prefix: -print_metrics
- id: in_genome
  doc: ': Genome name in UCSC (ie. hg19, mm10, etc).'
  type: string
  inputBinding:
    position: 0
- id: in_output_path
  doc: ': Output path to save .genome file'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- make_genome
