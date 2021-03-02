class: CommandLineTool
id: phyluce_probe_reconstruct_uce_from_probe.cwl
inputs:
- id: in_input
  doc: The input probe set
  type: string?
  inputBinding:
    prefix: --input
- id: in_output_fasta_file
  doc: The output FASTA file
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
- id: in_var_4
  doc: '[--verbosity {INFO,WARN,CRITICAL}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fasta_file
  doc: The output FASTA file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fasta_file)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_reconstruct_uce_from_probe
