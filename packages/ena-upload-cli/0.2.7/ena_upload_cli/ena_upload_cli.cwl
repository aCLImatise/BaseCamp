class: CommandLineTool
id: ena_upload_cli.cwl
inputs:
- id: in_action
  doc: "add: add an object to the archive\nmodify: modify an object in the archive\n\
    cancel: cancel a private object and its dependent objects\nrelease: release a\
    \ private object immediately to public"
  type: string?
  inputBinding:
    prefix: --action
- id: in_study
  doc: table of STUDY object
  type: string?
  inputBinding:
    prefix: --study
- id: in_sample
  doc: table of SAMPLE object
  type: string?
  inputBinding:
    prefix: --sample
- id: in_experiment
  doc: table of EXPERIMENT object
  type: string?
  inputBinding:
    prefix: --experiment
- id: in_run
  doc: table of RUN object
  type: string?
  inputBinding:
    prefix: --run
- id: in_data
  doc: '[FILE ...]     Data for submission'
  type: boolean?
  inputBinding:
    prefix: --data
- id: in_center
  doc: specific to your Webin account
  type: string?
  inputBinding:
    prefix: --center
- id: in_tool
  doc: "Specify the name of the tool this submission is done\nwith. Default: ena-upload-cli"
  type: string?
  inputBinding:
    prefix: --tool
- id: in_tool_version
  doc: "Specify the version of the tool this submission is\ndone with."
  type: string?
  inputBinding:
    prefix: --tool_version
- id: in_secret
  doc: ".secret.yml file containing the password and Webin ID\nof your ENA account"
  type: File?
  inputBinding:
    prefix: --secret
- id: in_dev
  doc: Flag to use the dev/sandbox endpoint of ENA.
  type: boolean?
  inputBinding:
    prefix: --dev
- id: in_vir
  doc: Flag to use the viral sample template.
  type: boolean?
  inputBinding:
    prefix: --vir
- id: in_en_a_up_oad_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ena-upload-cli:0.2.7--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- ena-upload-cli
