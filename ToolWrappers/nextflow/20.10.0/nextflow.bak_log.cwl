class: CommandLineTool
id: nextflow.bak_log.cwl
inputs:
- id: in_after
  doc: Show log entries for runs executed after the specified one
  type: boolean?
  inputBinding:
    prefix: -after
- id: in_before
  doc: Show log entries for runs executed before the specified one
  type: boolean?
  inputBinding:
    prefix: -before
- id: in_but
  doc: Show log entries of all runs except the specified one
  type: boolean?
  inputBinding:
    prefix: -but
- id: in_fields
  doc: "Comma separated list of fields to include in the printed log -- Use the\n\
    `-l` option to show the list of available fields"
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_filter
  doc: "Filter log entries by a custom expression e.g. process =~ /foo.*/ &&\nstatus\
    \ == 'COMPLETED'"
  type: boolean?
  inputBinding:
    prefix: -filter
- id: in_list_fields
  doc: "Show all available fields\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -list-fields
- id: in_quiet
  doc: "Show only run names\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_character_used_valuesdefault
  doc: "Character used to separate column values\nDefault:"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_template
  doc: "Text template used to each record in the log\n"
  type: boolean?
  inputBinding:
    prefix: -template
- id: in_log
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
  dockerPull: quay.io/biocontainers/nextflow:20.10.0--hecda079_0
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- log
