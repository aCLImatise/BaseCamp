class: CommandLineTool
id: phyluce_align_format_concatenated_phylip_for_paml.cwl
inputs:
- id: phylip_alignment
  doc: The PATH to a PHYLIP-formatted alignment
  type: string
  inputBinding:
    prefix: --phylip-alignment
- id: config
  doc: The PATH to a config file containing partition information (RAxML-formatted)
  type: string
  inputBinding:
    prefix: --config
- id: output
  doc: The PATH to an output file (will be PHYLIP formatted)
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
- phyluce_align_format_concatenated_phylip_for_paml
