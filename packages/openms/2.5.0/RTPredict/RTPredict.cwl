class: CommandLineTool
id: RTPredict.cwl
inputs:
- id: in_in_id
  doc: "Peptides with precursor information (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_id
- id: in_in_text
  doc: "Peptides as text-based file (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -in_text
- id: in_in_oligo_params
  doc: "Input file with additional model parameters when using the OLIGO kernel (valid\
    \ formats: 'paramXML')"
  type: File
  inputBinding:
    prefix: -in_oligo_params
- id: in_in_oligo_train_set
  doc: "Input file with the used training dataset when using the OLIGO kernel (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -in_oligo_trainset
- id: in_svm_model
  doc: "*           Svm model in libsvm format (can be produced by RTModel) (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -svm_model
- id: in_total_gradient_time
  doc: "The time (in seconds) of the gradient (peptide RT prediction) (default: '1.0'\
    \ min: '1.0e-05')"
  type: long
  inputBinding:
    prefix: -total_gradient_time
- id: in_out_text
  doc: ":file <file>        Output file with predicted RT values (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out_text
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
- id: out_out_text
  doc: ":file <file>        Output file with predicted RT values (valid formats: 'csv')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_text)
cwlVersion: v1.1
baseCommand:
- RTPredict
