class: CommandLineTool
id: wheezy.template.cwl
inputs:
- id: in_search_path_templates
  doc: search path for templates ( . )
  type: File?
  inputBinding:
    prefix: -s
- id: in_token_start_
  doc: token start ( @ )
  type: string?
  inputBinding:
    prefix: -t
- id: in_whitespace_clean_up
  doc: whitespace clean up
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_template
  doc: a filename
  type: string
  inputBinding:
    position: 0
- id: in_context
  doc: a filename or JSON string
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wheezy.template:0.1.178--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- wheezy.template
