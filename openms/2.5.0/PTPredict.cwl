#!/usr/bin/env cwl-runner

baseCommand:
- PTPredict
class: CommandLineTool
cwlVersion: v1.0
id: ptpredict
inputs:
- doc: "*                    Input file  (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                   Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "*             Svm model in libsvm format (can be produced by PTModel) (valid\
    \ formats: 'txt')"
  id: svm_model
  inputBinding:
    prefix: -svm_model
  type: File
- doc: "The maximum number of peptides considered at once (bigger number will lead\
    \ to faster results but needs more memory). (default: '100000')"
  id: max_number_of_peptides
  inputBinding:
    prefix: -max_number_of_peptides
  type: long
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
