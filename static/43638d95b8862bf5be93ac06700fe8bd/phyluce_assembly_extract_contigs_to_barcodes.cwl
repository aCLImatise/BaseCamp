class: CommandLineTool
id: phyluce_assembly_extract_contigs_to_barcodes.cwl
inputs:
- id: in_contigs
  doc: The directory containing the assembled contigs.
  type: Directory?
  inputBinding:
    prefix: --contigs
- id: in_config
  doc: A config file containing the contigs to extract.
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_fasta_file
  doc: The output FASTA file to create
  type: File?
  inputBinding:
    prefix: --output
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
- id: in_var_5
  doc: '[--verbosity {INFO,WARN,CRITICAL}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fasta_file
  doc: The output FASTA file to create
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fasta_file)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_extract_contigs_to_barcodes
