class: CommandLineTool
id: phyluce_probe_reconstruct_uce_from_probe.cwl
inputs:
- id: input
  doc: The input probe set
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTA file
  type: string
  inputBinding:
    prefix: --output
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
- phyluce_probe_reconstruct_uce_from_probe
