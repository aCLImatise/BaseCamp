class: CommandLineTool
id: iu_gen_configs.cwl
inputs:
- id: in_r_one_prefix
  doc: Prefix for Read 1 to be put in every config file.
  type: long?
  inputBinding:
    prefix: --r1-prefix
- id: in_r_two_prefix
  doc: Prefix for Read 2.
  type: long?
  inputBinding:
    prefix: --r2-prefix
- id: in_e_mail
  doc: E-mail address (currently is not used for anything)
  type: string?
  inputBinding:
    prefix: --e-mail
- id: in_output_dir
  doc: "Directory for output storage. INI files will also be\ngenerated in this directory.\n"
  type: Directory?
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Directory for output storage. INI files will also be\ngenerated in this directory.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- iu-gen-configs
