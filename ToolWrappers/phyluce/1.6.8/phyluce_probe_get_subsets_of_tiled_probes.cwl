class: CommandLineTool
id: phyluce_probe_get_subsets_of_tiled_probes.cwl
inputs:
- id: in_probes
  doc: The probe file to filter.
  type: File?
  inputBinding:
    prefix: --probes
- id: in_tax_a
  doc: The taxa for which to filter probes.
  type: string[]
  inputBinding:
    prefix: --taxa
- id: in_output
  doc: The file in which to store the output.
  type: File?
  inputBinding:
    prefix: --output
- id: in_regex
  doc: "A regular expression to apply to the probe names for\nreplacement [default='^(uce-\\\
    d+)(?:_p\\d+.*)'].\n"
  type: string?
  inputBinding:
    prefix: --regex
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The file in which to store the output.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_subsets_of_tiled_probes
