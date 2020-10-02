class: CommandLineTool
id: phyluce_align_format_concatenated_phylip_for_paml.cwl
inputs:
- id: in_phylip_alignment
  doc: "PHYLIP_ALIGNMENT\n--config CONFIG\n--output OUTPUT\n[--verbosity {INFO,WARN,CRITICAL}]\n\
    [--log-path LOG_PATH]"
  type: File
  inputBinding:
    prefix: --phylip-alignment
- id: in_config
  doc: "The PATH to a config file containing partition\ninformation (RAxML-formatted)"
  type: File
  inputBinding:
    prefix: --config
- id: in_output
  doc: The PATH to an output file (will be PHYLIP formatted)
  type: File
  inputBinding:
    prefix: --output
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_phylip_alignment
  doc: "PHYLIP_ALIGNMENT\n--config CONFIG\n--output OUTPUT\n[--verbosity {INFO,WARN,CRITICAL}]\n\
    [--log-path LOG_PATH]"
  type: File
  outputBinding:
    glob: $(inputs.in_phylip_alignment)
- id: out_output
  doc: The PATH to an output file (will be PHYLIP formatted)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_align_format_concatenated_phylip_for_paml
