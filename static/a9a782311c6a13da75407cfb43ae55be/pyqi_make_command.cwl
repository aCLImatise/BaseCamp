class: CommandLineTool
id: pyqi_make_command.cwl
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
- id: in_command_version
  doc: 'version (e.g., 0.1) [default: none]'
  type: double
  inputBinding:
    prefix: --command-version
- id: in_credits
  doc: 'comma-separated list of other authors [default: none]'
  type: string
  inputBinding:
    prefix: --credits
- id: in_test_code
  doc: 'create stubbed out unit test code [default: False]'
  type: boolean
  inputBinding:
    prefix: --test-code
- id: in_name
  doc: the name of the Command [REQUIRED]
  type: string
  inputBinding:
    prefix: --name
- id: in_output_fp
  doc: "output filepath to store generated Python code\n[REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --output-fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: "output filepath to store generated Python code\n[REQUIRED]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fp)
cwlVersion: v1.1
baseCommand:
- pyqi
- make-command
