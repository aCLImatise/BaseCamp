class: CommandLineTool
id: phyluce_align_get_aligns_partitioned_by_cluster.cwl
inputs:
- id: alignments
  doc: The directory containing the alignment files
  type: string
  inputBinding:
    prefix: --alignments
- id: cluster_csv
  doc: The cluster CSV file
  type: string
  inputBinding:
    prefix: --cluster-csv
- id: output
  doc: An output directory to hold the converted alignments.
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --output-format
- id: cores
  doc: The number of cores to use.
  type: string
  inputBinding:
    prefix: --cores
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_aligns_partitioned_by_cluster
