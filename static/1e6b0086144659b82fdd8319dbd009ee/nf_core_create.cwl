class: CommandLineTool
id: nf_core_create.cwl
inputs:
- id: in_name
  doc: The name of your new pipeline  [required]
  type: string?
  inputBinding:
    prefix: --name
- id: in_description
  doc: A short description of your pipeline  [required]
  type: string?
  inputBinding:
    prefix: --description
- id: in_author
  doc: Name of the main author(s)  [required]
  type: string?
  inputBinding:
    prefix: --author
- id: in_new_version
  doc: The initial version number to use
  type: long?
  inputBinding:
    prefix: --new-version
- id: in_no_git
  doc: Do not initialise pipeline as new git repository
  type: boolean?
  inputBinding:
    prefix: --no-git
- id: in_force
  doc: Overwrite output directory if it already exists
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_outdir
  doc: "Output directory for new pipeline (default: pipeline\nname)"
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Overwrite output directory if it already exists
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_outdir
  doc: "Output directory for new pipeline (default: pipeline\nname)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- create
