class: CommandLineTool
id: refseq_masher_contains.cwl
inputs:
- id: in_mash_bin
  doc: Mash binary path (default="mash")
  type: File?
  inputBinding:
    prefix: --mash-bin
- id: in_output
  doc: Output file path (default="-"/stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: '[tab|csv]      Output file type (tab|csv)'
  type: File?
  inputBinding:
    prefix: --output-type
- id: in_top_n_results
  doc: "Output top N results sorted by identity in\nascending order (default=0/all)"
  type: long?
  inputBinding:
    prefix: --top-n-results
- id: in_min_identity
  doc: "Mash screen min identity to report\n(default=0.9)"
  type: double?
  inputBinding:
    prefix: --min-identity
- id: in_max_p_value
  doc: "Mash screen max p-value to report\n(default=0.01)"
  type: double?
  inputBinding:
    prefix: --max-pvalue
- id: in_parallelism
  doc: "Mash screen parallelism; number of threads to\nspawn (default=1)"
  type: long?
  inputBinding:
    prefix: --parallelism
- id: in_screen
  doc: Input is expected to be one or more FASTA/FASTQ files or one or more
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file path (default="-"/stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_type
  doc: '[tab|csv]      Output file type (tab|csv)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_type)
hints: []
cwlVersion: v1.1
baseCommand:
- refseq_masher
- contains
