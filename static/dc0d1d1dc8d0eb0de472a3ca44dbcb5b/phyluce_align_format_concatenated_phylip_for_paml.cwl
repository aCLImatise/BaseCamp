class: CommandLineTool
id: phyluce_align_format_concatenated_phylip_for_paml.cwl
inputs:
- id: in_path_phylipformatted_alignment
  doc: The PATH to a PHYLIP-formatted alignment
  type: File?
  inputBinding:
    prefix: --phylip-alignment
- id: in_config
  doc: "The PATH to a config file containing partition\ninformation (RAxML-formatted)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_output
  doc: The PATH to an output file (will be PHYLIP formatted)
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
- id: in__config_config
  doc: --config CONFIG
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The PATH to an output file (will be PHYLIP formatted)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_format_concatenated_phylip_for_paml
