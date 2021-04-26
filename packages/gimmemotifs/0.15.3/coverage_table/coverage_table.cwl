class: CommandLineTool
id: coverage_table.cwl
inputs:
- id: in_peaks
  doc: BED file containing peaks
  type: File?
  inputBinding:
    prefix: --peaks
- id: in_data_files_bam
  doc: "[FILE [FILE ...]], --datafile [FILE [FILE ...]]\ndata files (BAM, BED or bigWig\
    \ format)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_window
  doc: window size (default 200)
  type: long?
  inputBinding:
    prefix: --window
- id: in_log_transform
  doc: Log transfrom
  type: boolean?
  inputBinding:
    prefix: --logtransform
- id: in_normalization
  doc: 'Normalization: none, quantile or scale'
  type: string?
  inputBinding:
    prefix: --normalization
- id: in_top
  doc: Select regions.
  type: string?
  inputBinding:
    prefix: --top
- id: in_top_method
  doc: Method to select regions (var, std, mean or random)
  type: string?
  inputBinding:
    prefix: --topmethod
- id: in_keep_duplicate_reads
  doc: keep duplicate reads (removed by default)
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_keep_reads_mapq
  doc: keep reads with mapq 0 (removed by default)
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_n_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gimmemotifs:0.15.3--py38hc37a69a_0
cwlVersion: v1.1
baseCommand:
- coverage_table
