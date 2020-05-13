class: CommandLineTool
id: PTPredict.cwl
inputs:
- id: in
  doc: "*                    Input file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                   Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: svm_model
  doc: "*             Svm model in libsvm format (can be produced by PTModel) (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -svm_model
- id: max_number_of_peptides
  doc: "The maximum number of peptides considered at once (bigger number will lead\
    \ to faster results but needs more memory). (default: '100000')"
  type: long
  inputBinding:
    prefix: -max_number_of_peptides
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
- PTPredict
