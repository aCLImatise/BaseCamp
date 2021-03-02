class: CommandLineTool
id: focus_database_utils.cwl
inputs:
- id: in_genomes
  doc: Path to directory with FAST(A/Q) files
  type: File?
  inputBinding:
    prefix: --genomes
- id: in_threads
  doc: 'Number Threads used in the k-mer counting (Default: 4)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log
  doc: 'Path to log file (Default: STDOUT).'
  type: File?
  inputBinding:
    prefix: --log
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/focus:1.6--py_0
cwlVersion: v1.1
baseCommand:
- focus_database_utils
