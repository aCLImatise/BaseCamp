class: CommandLineTool
id: guppy_rarefy.cwl
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
- id: in_seed
  doc: Set the random seed, an integer > 0. Default is 1.
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_number_keep_placefile
  doc: The number of pqueries to keep per placefile.
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_rare_fy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_file
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- rarefy
