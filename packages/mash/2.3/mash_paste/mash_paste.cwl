class: CommandLineTool
id: mash_paste.cwl
inputs:
- id: in_input_files_lists
  doc: Input files are lists of file names.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_option
  doc: Description (range) [default]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mash:2.3--ha61e061_0
cwlVersion: v1.1
baseCommand:
- mash
- paste
