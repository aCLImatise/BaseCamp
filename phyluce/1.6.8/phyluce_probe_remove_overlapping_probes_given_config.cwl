class: CommandLineTool
id: phyluce_probe_remove_overlapping_probes_given_config.cwl
inputs:
- id: probes
  doc: The input probe file
  type: string
  inputBinding:
    prefix: --probes
- id: config
  doc: The input conf file of probes names to remove
  type: string
  inputBinding:
    prefix: --config
- id: output
  doc: The output probe file to write
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_remove_overlapping_probes_given_config
