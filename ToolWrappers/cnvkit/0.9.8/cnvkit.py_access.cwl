class: CommandLineTool
id: cnvkit.py_access.cwl
inputs:
- id: in_min_gap_size
  doc: "Minimum gap size between accessible sequence regions.\nRegions separated by\
    \ less than this distance will be\njoined together. [Default: 5000]"
  type: long?
  inputBinding:
    prefix: --min-gap-size
- id: in_exclude
  doc: "Additional regions to exclude, in BED format. Can be\nused multiple times."
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_output
  doc: "Output file name\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- access
