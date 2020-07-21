class: CommandLineTool
id: ../../../comet.exe.cwl
inputs:
- id: print_cometparams_file
  doc: to print out a comet.params file (named comet.params.new)
  type: boolean
  inputBinding:
    prefix: -p
- id: params_specify_cometparams
  doc: <params> to specify an alternate parameters file (default comet.params)
  type: boolean
  inputBinding:
    prefix: -P
- id: name_specify_name
  doc: <name>   to specify an alternate output base name; valid only with one input
    file
  type: boolean
  inputBinding:
    prefix: -N
- id: dbase_specify_entry
  doc: <dbase>  to specify a sequence database, overriding entry in parameters file
  type: boolean
  inputBinding:
    prefix: -D
- id: num_specify_firststart_scan
  doc: <num>    to specify the first/start scan to search, overriding entry in parameters
    file
  type: boolean
  inputBinding:
    prefix: -F
- id: num_specify_lastend_scan
  doc: <num>    to specify the last/end scan to search, overriding entry in parameters
    file (-L option is required if -F option is used)
  type: boolean
  inputBinding:
    prefix: -L
- id: create_peptide_index
  doc: create peptide index file only (specify .idx file as database for index search)
  type: boolean
  inputBinding:
    prefix: -i
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- comet.exe
