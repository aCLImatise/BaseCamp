class: CommandLineTool
id: phigaro_setup.cwl
inputs:
- id: in_config
  doc: "Path to a config.yml, default is\n/root/.phigaro/config.yml (default:\n/root/.phigaro/config.yml)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_pv_og
  doc: "pvogs directory, default is /root/.phigaro/pvog\n(default: /root/.phigaro/pvog)"
  type: Directory?
  inputBinding:
    prefix: --pvog
- id: in_force
  doc: "Force configuration and rewrite config.yml if exists\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_no_updated_b
  doc: 'Do not run sudo updatedb (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-updatedb
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phigaro:2.3.0--pyh7b7c402_1
cwlVersion: v1.1
baseCommand:
- phigaro-setup
