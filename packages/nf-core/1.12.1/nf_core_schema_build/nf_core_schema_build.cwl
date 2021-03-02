class: CommandLineTool
id: nf_core_schema_build.cwl
inputs:
- id: in_no_prompts
  doc: Do not confirm changes, just update parameters and exit
  type: boolean?
  inputBinding:
    prefix: --no-prompts
- id: in_web_only
  doc: Skip building using Nextflow config, just launch the web tool
  type: boolean?
  inputBinding:
    prefix: --web-only
- id: in_url
  doc: Customise the builder URL (for development work)
  type: string?
  inputBinding:
    prefix: --url
- id: in_pipeline_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- schema
- build
