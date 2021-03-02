class: CommandLineTool
id: guppy_merge.cwl
inputs:
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
  doc: Specify a string to be prepended to filenames.
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_split_csv
  doc: Write out a csv file indicating the source of each read in the combined placefile.
  type: File?
  inputBinding:
    prefix: --split-csv
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_split_csv
  doc: Write out a csv file indicating the source of each read in the combined placefile.
  type: File?
  outputBinding:
    glob: $(inputs.in_split_csv)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sepp:v4.5.0--py37_0
cwlVersion: v1.1
baseCommand:
- guppy
- merge
