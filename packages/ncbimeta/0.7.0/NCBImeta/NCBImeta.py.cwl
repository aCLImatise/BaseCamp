class: CommandLineTool
id: NCBImeta.py.cwl
inputs:
- id: in_config
  doc: Path to the yaml configuration file (ex. config.yaml).
  type: File?
  inputBinding:
    prefix: --config
- id: in_flat
  doc: Don't create sub-directories in output directory.
  type: Directory?
  inputBinding:
    prefix: --flat
- id: in_email
  doc: User email to override parameter in config file.
  type: File?
  inputBinding:
    prefix: --email
- id: in_api
  doc: User API key to override parameter in config file.
  type: File?
  inputBinding:
    prefix: --api
- id: in_force_pause_seconds
  doc: "FORCE PAUSE SECONDS to override parameter in config\nfile.\n"
  type: File?
  inputBinding:
    prefix: --force-pause-seconds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_flat
  doc: Don't create sub-directories in output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_flat)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ncbimeta:0.7.0--py_0
cwlVersion: v1.1
baseCommand:
- NCBImeta.py
