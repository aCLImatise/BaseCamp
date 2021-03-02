class: CommandLineTool
id: new_species.pl.cwl
inputs:
- id: in_augustus_config_path
  doc: full path to augustus/config directory
  type: File?
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
- id: in_silent
  doc: suppress help messages
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_ignore
  doc: "don't do anything if species already exists (default: off)"
  type: boolean?
  inputBinding:
    prefix: --ignore
- id: in_prokaryotic
  doc: use prokaryotic template instead of eukaryotic template
  type: boolean?
  inputBinding:
    prefix: --prokaryotic
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- new_species.pl
