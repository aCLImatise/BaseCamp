class: CommandLineTool
id: phyluce_probe_remove_overlapping_probes_given_config.cwl
inputs:
- id: in_probes
  doc: The input probe file
  type: File?
  inputBinding:
    prefix: --probes
- id: in_config
  doc: The input conf file of probes names to remove
  type: File?
  inputBinding:
    prefix: --config
- id: in_output
  doc: The output probe file to write
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output probe file to write
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_remove_overlapping_probes_given_config
