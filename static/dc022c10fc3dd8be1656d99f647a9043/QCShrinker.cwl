class: CommandLineTool
id: QCShrinker.cwl
inputs:
- id: in
  doc: "*             Input qcml file (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -in
- id: qp_accessions
  doc: A list of cv accessions that should be removed. If empty, the usual suspects
    will be removed!
  type: string
  inputBinding:
    prefix: -qp_accessions
- id: name
  doc: The name of the target run or set that contains the requested quality parameter.
  type: string
  inputBinding:
    prefix: -name
- id: run
  doc: "The file from which the name of the target run that contains the requested\
    \ quality parameter is taken. This overrides the name parameter! (valid formats:\
    \ 'mzML')"
  type: File
  inputBinding:
    prefix: -run
- id: out
  doc: "*            Output extended/reduced qcML file (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -out
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- QCShrinker
