class: CommandLineTool
id: pyqi_make_optparse.cwl
inputs:
- id: in_author
  doc: 'author/maintainer name [default: none]'
  type: string
  inputBinding:
    prefix: --author
- id: in_email
  doc: 'maintainer email address [default: none]'
  type: string
  inputBinding:
    prefix: --email
- id: in_license
  doc: 'license (e.g., BSD) [default: none]'
  type: string
  inputBinding:
    prefix: --license
- id: in_copyright
  doc: "copyright (e.g., Copyright 2013, The pyqi project)\n[default: none]"
  type: long
  inputBinding:
    prefix: --copyright
- id: in_config_version
  doc: 'version (e.g., 0.1) [default: none]'
  type: double
  inputBinding:
    prefix: --config-version
- id: in_credits
  doc: 'comma-separated list of other authors [default: none]'
  type: string
  inputBinding:
    prefix: --credits
- id: in_command
  doc: an existing Command [REQUIRED]
  type: string
  inputBinding:
    prefix: --command
- id: in_command_module
  doc: the Command source module [REQUIRED]
  type: string
  inputBinding:
    prefix: --command-module
- id: in_output_fp
  doc: "output filepath to store generated optparse Python\nconfiguration file [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --output-fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: "output filepath to store generated optparse Python\nconfiguration file [REQUIRED]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fp)
cwlVersion: v1.1
baseCommand:
- pyqi
- make-optparse
