class: CommandLineTool
id: long_to_linked.cwl
inputs:
- id: in_length
  doc: Length for long reads to be cut to
  type: long?
  inputBinding:
    prefix: --length
- id: in_min_size
  doc: Minimum read length to be considered a molecule
  type: long?
  inputBinding:
    prefix: --min_size
- id: in_auto_span
  doc: Option to calculate spanning molecules threshold
  type: boolean?
  inputBinding:
    prefix: --auto_span
- id: in_auto_dist
  doc: Option to calculate read length p5 for dist parameter
  type: boolean?
  inputBinding:
    prefix: --auto_dist
- id: in_genome_size
  doc: "Genome size for calculating sequence coverage and\nminimum spanning molecules\
    \ parameter (e.g. 3e9)"
  type: long?
  inputBinding:
    prefix: --genome_size
- id: in_param_outfile
  doc: "Output file for calculated span\n"
  type: File?
  inputBinding:
    prefix: --param_outfile
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_param_outfile
  doc: "Output file for calculated span\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_param_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tigmint:1.2.2--py_1
cwlVersion: v1.1
baseCommand:
- long-to-linked
