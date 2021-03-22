class: CommandLineTool
id: guppy_error.cwl
inputs:
- id: in_pp
  doc: Use posterior probability for the weight.
  type: boolean?
  inputBinding:
    prefix: --pp
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
- id: in_csv
  doc: Output the results as csv instead of a padded matrix.
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_include_pendant
  doc: Include pendant branch lengths in distance calculations.
  type: boolean?
  inputBinding:
    prefix: --include-pendant
- id: in_scale_experimental_bl
  doc: Scale the branch lengths in the experimental jplace file.
  type: boolean?
  inputBinding:
    prefix: --scale-experimental-bl
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_error
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_experimental_dot_j_place
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_expected_dot_j_place
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sepp:4.5.1--py37_0
cwlVersion: v1.1
baseCommand:
- guppy
- error
