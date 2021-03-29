class: CommandLineTool
id: mulled_list.cwl
inputs:
- id: in_source
  doc: Docker, Singularity or Conda.
  type: string?
  inputBinding:
    prefix: --source
- id: in_not_singularity
  doc: "Exclude Docker containers from which Singularity\ncontainers have already\
    \ been built."
  type: boolean?
  inputBinding:
    prefix: --not-singularity
- id: in_not_cond_a
  doc: "Exclude Docker containers from which Conda\nenvironments have already been\
    \ extracted."
  type: boolean?
  inputBinding:
    prefix: --not-conda
- id: in_cond_a_file_path
  doc: "If searching for conda environments or employing the\n--not-conda option,\
    \ a filepath where the environments\nare located."
  type: File?
  inputBinding:
    prefix: --conda-filepath
- id: in_blocklist
  doc: "Provide a 'blocklist file' containing containers which\nshould be excluded\
    \ from the list."
  type: File?
  inputBinding:
    prefix: --blocklist
- id: in_file
  doc: "File to write list to. If not given output will be\nreturned on the command\
    \ line.\n"
  type: File?
  inputBinding:
    prefix: --file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file
  doc: "File to write list to. If not given output will be\nreturned on the command\
    \ line.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-tool-util:21.1.0--py_0
cwlVersion: v1.1
baseCommand:
- mulled-list
