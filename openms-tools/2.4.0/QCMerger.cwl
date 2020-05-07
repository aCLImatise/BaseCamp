class: CommandLineTool
id: QCMerger.cwl
inputs:
- id: in
  doc: "*       List of qcml files to be merged. (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       Output extended/reduced qcML file (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -out
- id: setname
  doc: Use only when all given qcml files belong to one set, which will be held under
    the given name.
  type: string
  inputBinding:
    prefix: -setname
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
- QCMerger
