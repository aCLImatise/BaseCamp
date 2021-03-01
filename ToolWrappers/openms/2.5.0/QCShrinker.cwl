class: CommandLineTool
id: QCShrinker.cwl
inputs:
- id: in_in
  doc: "*             Input qcml file (valid formats: 'qcML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_qp_accessions
  doc: A list of cv accessions that should be removed. If empty, the usual suspects
    will be removed!
  type: string?
  inputBinding:
    prefix: -qp_accessions
- id: in_name
  doc: The name of the target run or set that contains the requested quality parameter.
  type: string?
  inputBinding:
    prefix: -name
- id: in_run
  doc: "The file from which the name of the target run that contains the requested\
    \ quality parameter is taken. This overrides the name parameter! (valid formats:\
    \ 'mzML')"
  type: File?
  inputBinding:
    prefix: -run
- id: in_out
  doc: "*            Output extended/reduced qcML file (valid formats: 'qcML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*            Output extended/reduced qcML file (valid formats: 'qcML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- QCShrinker
