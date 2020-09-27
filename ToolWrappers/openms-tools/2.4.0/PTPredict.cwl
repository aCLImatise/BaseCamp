class: CommandLineTool
id: PTPredict.cwl
inputs:
- id: in_in
  doc: "*                    Input file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                   Output file\n(valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_svm_model
  doc: "*             Svm model in libsvm format (can be produced by PTModel) (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -svm_model
- id: in_max_number_of_peptides
  doc: "The maximum number of peptides considered at once (bigger number will lead\
    \ to faster results but needs more memory).\n(default: '100000')"
  type: long
  inputBinding:
    prefix: -max_number_of_peptides
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                   Output file\n(valid formats: 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- PTPredict
