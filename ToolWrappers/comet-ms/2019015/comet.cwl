class: CommandLineTool
id: comet.cwl
inputs:
- id: in_print_cometparams_file
  doc: to print out a comet.params file (named comet.params.new)
  type: File?
  inputBinding:
    prefix: -p
- id: in_params_specify_parameters
  doc: <params> to specify an alternate parameters file (default comet.params)
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_name_specify_name
  doc: <name>   to specify an alternate output base name; valid only with one input
    file
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_dbase_specify_database
  doc: <dbase>  to specify a sequence database, overriding entry in parameters file
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_num_specify_firststart
  doc: <num>    to specify the first/start scan to search, overriding entry in parameters
    file
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_num_specify_lastend
  doc: "<num>    to specify the last/end scan to search, overriding entry in parameters\
    \ file\n(-L option is required if -F option is used)"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_create_peptide_file
  doc: create peptide index file only (specify .idx file as database for index search)
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_print_cometparams_file
  doc: to print out a comet.params file (named comet.params.new)
  type: File?
  outputBinding:
    glob: $(inputs.in_print_cometparams_file)
hints: []
cwlVersion: v1.1
baseCommand:
- comet
