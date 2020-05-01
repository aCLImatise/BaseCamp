#!/usr/bin/env cwl-runner

baseCommand:
- RTPredict
class: CommandLineTool
cwlVersion: v1.0
id: rtpredict
inputs:
- doc: "Peptides with precursor information (valid formats: 'idXML')"
  id: in_id
  inputBinding:
    prefix: -in_id
  type: File
- doc: "Peptides as text-based file (valid formats: 'txt')"
  id: in_text
  inputBinding:
    prefix: -in_text
  type: File
- doc: "Input file with additional model parameters when using the OLIGO kernel (valid\
    \ formats: 'paramXML')"
  id: in_oligo_params
  inputBinding:
    prefix: -in_oligo_params
  type: File
- doc: "Input file with the used training dataset when using the OLIGO kernel (valid\
    \ formats: 'txt')"
  id: in_oligo_train_set
  inputBinding:
    prefix: -in_oligo_trainset
  type: File
- doc: "*           Svm model in libsvm format (can be produced by RTModel) (valid\
    \ formats: 'txt')"
  id: svm_model
  inputBinding:
    prefix: -svm_model
  type: File
- doc: "The time (in seconds) of the gradient (peptide RT prediction) (default: '1'\
    \ min: '1e-05')"
  id: total_gradient_time
  inputBinding:
    prefix: -total_gradient_time
  type: string
- doc: ":file <file>          Output file with peptide RT prediction (valid formats:\
    \ 'idXML')"
  id: out_id
  inputBinding:
    prefix: -out_id
  type: boolean
- doc: ":positive <file>      Output file in idXML format containing positive predictions\
    \ for peptide separation prediction - requires 'out_id:negative' to be present\
    \ as well. (valid formats: 'idXML')"
  id: out_id
  inputBinding:
    prefix: -out_id
  type: boolean
- doc: ":negative <file>      Output file in idXML format containing negative predictions\
    \ for peptide separation prediction - requires 'out_id:positive' to be present\
    \ as well. (valid formats: 'idXML')"
  id: out_id
  inputBinding:
    prefix: -out_id
  type: boolean
- doc: ":file <file>        Output file with predicted RT values (valid formats: 'csv')"
  id: out_text
  inputBinding:
    prefix: -out_text
  type: boolean
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
