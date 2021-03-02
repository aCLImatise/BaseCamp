class: CommandLineTool
id: guppy_classify_rdp.cwl
inputs:
- id: in_csv
  doc: Write .class.csv files containing CSV data.
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_reference_package_path
  doc: Reference package path. Required.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_sqlite
  doc: Specify the database file to use.
  type: boolean?
  inputBinding:
    prefix: --sqlite
- id: in_specify_filename_write
  doc: Specify the filename to write to.
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_out_dir
  doc: Specify the directory to write files to.
  type: boolean?
  inputBinding:
    prefix: --out-dir
- id: in_prefix
  doc: Specify a string to be prepended to filenames. Required.
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_classify_rdp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rdp_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sepp:v4.5.0--py37_0
cwlVersion: v1.1
baseCommand:
- guppy
- classify_rdp
