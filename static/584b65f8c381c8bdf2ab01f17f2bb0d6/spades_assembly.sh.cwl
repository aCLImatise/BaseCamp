class: CommandLineTool
id: spades_assembly.sh.cwl
inputs:
- id: in_var_0
  doc: file (mandatory)
  type: long?
  inputBinding:
    prefix: -p
- id: in_var_1
  doc: file (mandatory)
  type: long?
  inputBinding:
    prefix: -P
- id: in_supplied_numbers_sepparated
  doc: ', supplied as numbers sepparated by number or one flag per number, default:
    21,33,55,77,99,127'
  type: long?
  inputBinding:
    prefix: -k
- id: in_directory_optional
  doc: directory (optional)
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_name
  doc: name
  type: File?
  inputBinding:
    prefix: -f
- id: in_name_mandatory
  doc: name (mandatory)
  type: string?
  inputBinding:
    prefix: -s
- id: in_name_optional_unset
  doc: name (optional). If unset, samples will be gathered in NO_GROUP group
  type: string?
  inputBinding:
    prefix: -g
- id: in_look_supplied_term
  doc: ': look for files in a folder SUPPLIED with "paired" term'
  type: Directory?
  inputBinding:
    prefix: -q
- id: in_mode_remove_folders
  doc: 'mode: remove unnecesary temporary folders'
  type: string?
  inputBinding:
    prefix: -c
- id: in__default
  doc: ', default 1'
  type: long?
  inputBinding:
    prefix: -T
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- spades_assembly.sh
