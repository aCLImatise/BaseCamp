class: CommandLineTool
id: phyluce_probe_get_subsets_of_tiled_probes.cwl
inputs:
- id: probes
  doc: The probe file to filter.
  type: string
  inputBinding:
    prefix: --probes
- id: tax_a
  doc: The taxa for which to filter probes.
  type: string[]
  inputBinding:
    prefix: --taxa
- id: output
  doc: The file in which to store the output.
  type: string
  inputBinding:
    prefix: --output
- id: regex
  doc: A regular expression to apply to the probe names for replacement [default='^(uce-\d+)(?:_p\d+.*)'].
  type: string
  inputBinding:
    prefix: --regex
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_subsets_of_tiled_probes
