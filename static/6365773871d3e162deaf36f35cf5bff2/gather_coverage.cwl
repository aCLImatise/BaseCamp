class: CommandLineTool
id: gather_coverage.cwl
inputs:
- id: in_output
  doc: unified coverage table output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_stats
  doc: file to write per-position cohort-wide stats to
  type: File?
  inputBinding:
    prefix: --stats
- id: in_threads
  doc: number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_tsv
  doc: per sample coverage table input file(s)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: unified coverage table output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- gather_coverage
