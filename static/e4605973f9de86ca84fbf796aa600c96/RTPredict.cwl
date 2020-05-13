class: CommandLineTool
id: RTPredict.cwl
inputs:
- id: in_id
  doc: "Peptides with precursor information (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_id
- id: in_text
  doc: "Peptides as text-based file (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -in_text
- id: in_oligo_params
  doc: "Input file with additional model parameters when using the OLIGO kernel (valid\
    \ formats: 'paramXML')"
  type: File
  inputBinding:
    prefix: -in_oligo_params
- id: in_oligo_train_set
  doc: "Input file with the used training dataset when using the OLIGO kernel (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -in_oligo_trainset
- id: svm_model
  doc: "*           Svm model in libsvm format (can be produced by RTModel) (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -svm_model
- id: total_gradient_time
  doc: "The time (in seconds) of the gradient (peptide RT prediction) (default: '1'\
    \ min: '1e-05')"
  type: string
  inputBinding:
    prefix: -total_gradient_time
- id: out_id
  doc: ":file <file>          Output file with peptide RT prediction (valid formats:\
    \ 'idXML')"
  type: boolean
  inputBinding:
    prefix: -out_id
- id: out_id
  doc: ":positive <file>      Output file in idXML format containing positive predictions\
    \ for peptide separation prediction - requires 'out_id:negative' to be present\
    \ as well. (valid formats: 'idXML')"
  type: boolean
  inputBinding:
    prefix: -out_id
- id: out_id
  doc: ":negative <file>      Output file in idXML format containing negative predictions\
    \ for peptide separation prediction - requires 'out_id:positive' to be present\
    \ as well. (valid formats: 'idXML')"
  type: boolean
  inputBinding:
    prefix: -out_id
- id: out_text
  doc: ":file <file>        Output file with predicted RT values (valid formats: 'csv')"
  type: boolean
  inputBinding:
    prefix: -out_text
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
- RTPredict
