class: CommandLineTool
id: phyluce_align_get_aligns_partitioned_by_cluster.cwl
inputs:
- id: in_directory_containing_files
  doc: The directory containing the alignment files
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_cluster_csv
  doc: The cluster CSV file
  type: File?
  inputBinding:
    prefix: --cluster-csv
- id: in_output_directory_hold
  doc: An output directory to hold the converted alignments.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input alignment format
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: The input alignment format
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_cores
  doc: The number of cores to use.
  type: long?
  inputBinding:
    prefix: --cores
- id: in_verbosity
  doc: The logging level to use.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in__clustercsv
  doc: --cluster-csv
  type: string
  inputBinding:
    position: 0
- id: in_var_9
  doc: '[--input-format {fasta,nexus,phylip,phylip-relaxed,phylip-sequential,clustal,emboss,stockholm}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_hold
  doc: An output directory to hold the converted alignments.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_hold)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_aligns_partitioned_by_cluster
