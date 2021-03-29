class: CommandLineTool
id: seroba_runSerotyping.cwl
inputs:
- id: in_no_clean
  doc: "Do not clean up intermediate files (assemblies, ariba\nreport)"
  type: boolean?
  inputBinding:
    prefix: --noclean
- id: in_coverage
  doc: "threshold for k-mer coverage of the reference sequence\n, default = 20\n"
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_databases
  doc: path to database directory
  type: string
  inputBinding:
    position: 0
- id: in_read_one
  doc: forward read file
  type: long
  inputBinding:
    position: 1
- id: in_read_two
  doc: backward read file
  type: long
  inputBinding:
    position: 2
- id: in_prefix
  doc: unique prefix
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seroba:1.0.2--py_0
cwlVersion: v1.1
baseCommand:
- seroba
- runSerotyping
