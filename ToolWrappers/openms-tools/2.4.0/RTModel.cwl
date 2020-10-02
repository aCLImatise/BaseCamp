class: CommandLineTool
id: RTModel.cwl
inputs:
- id: in_in
  doc: "This is the name of the input file (RT prediction). It is assumed that the\
    \ file type is idXML. Alternatively you can provide a .txt file having a sequence\
    \ and the corresponding rt per line.\n(valid formats: 'idXML', 'txt')"
  type: File
  inputBinding:
    prefix: -in
- id: in_in_positive
  doc: "Input file with positive examples (peptide separation prediction)\n(valid\
    \ formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_positive
- id: in_in_negative
  doc: "Input file with negative examples (peptide separation prediction)\n(valid\
    \ formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_negative
- id: in_out
  doc: "*                    Output file: the model in libsvm format (valid formats:\
    \ 'txt')"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_oligo_params
  doc: "Output file with additional model parameters when using the OLIGO kernel (valid\
    \ formats: 'paramXML')"
  type: File
  inputBinding:
    prefix: -out_oligo_params
- id: in_out_oligo_train_set
  doc: "Output file with the used training dataset when using the OLIGO kernel (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -out_oligo_trainset
- id: in_svm_type
  doc: "The type of the svm (NU_SVR or EPSILON_SVR for RT prediction, automatically\
    \ set\nto C_SVC for separation prediction)\n(default: 'NU_SVR' valid: 'NU_SVR',\
    \ 'NU_SVC', 'EPSILON_SVR', 'C_SVC')"
  type: string
  inputBinding:
    prefix: -svm_type
- id: in_nu
  doc: "The nu parameter [0..1] of the svm (for nu-SVR) (default: '0.5' min: '0' max:\
    \ '1')"
  type: double
  inputBinding:
    prefix: -nu
- id: in_epsilon_parameter_svm
  doc: "The epsilon parameter of the svm (for epsilon-SVR) (default: '0.1')"
  type: double
  inputBinding:
    prefix: -p
- id: in_penalty_parameter_svm
  doc: "The penalty parameter of the svm (default: '1')"
  type: double
  inputBinding:
    prefix: -c
- id: in_kernel_type
  doc: "The kernel type of the svm (default: 'OLIGO' valid: 'LINEAR', 'RBF', 'POLY',\
    \ 'OLIGO')"
  type: string
  inputBinding:
    prefix: -kernel_type
- id: in_degree
  doc: "The degree parameter of the kernel function of the svm (POLY kernel)\n(default:\
    \ '1' min: '1')"
  type: long
  inputBinding:
    prefix: -degree
- id: in_border_length
  doc: "Length of the POBK (default: '22' min: '1')"
  type: long
  inputBinding:
    prefix: -border_length
- id: in_max_std
  doc: "Max standard deviation for a peptide to be included (if there are several\
    \ ones for one peptide string)(median is taken) (default: '10' min: '0')"
  type: double
  inputBinding:
    prefix: -max_std
- id: in_k_mer_length
  doc: "K_mer length of the POBK (default: '1' min: '1')"
  type: long
  inputBinding:
    prefix: -k_mer_length
- id: in_sigma
  doc: "Sigma of the POBK (default: '5')"
  type: double
  inputBinding:
    prefix: -sigma
- id: in_total_gradient_time
  doc: "The time (in seconds) of the gradient (only for RT prediction) (default: '1'\
    \ min: '1e-05')"
  type: long
  inputBinding:
    prefix: -total_gradient_time
- id: in_first_dim_rt
  doc: If set the model will be built for first_dim_rt
  type: boolean
  inputBinding:
    prefix: -first_dim_rt
- id: in_additive_cv
  doc: "If the step sizes should be interpreted additively (otherwise the actual value\
    \ is multiplied\nwith the step size to get the new value"
  type: boolean
  inputBinding:
    prefix: -additive_cv
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
  doc: "*                    Output file: the model in libsvm format (valid formats:\
    \ 'txt')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_oligo_params
  doc: "Output file with additional model parameters when using the OLIGO kernel (valid\
    \ formats: 'paramXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_oligo_params)
- id: out_out_oligo_train_set
  doc: "Output file with the used training dataset when using the OLIGO kernel (valid\
    \ formats: 'txt')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_oligo_train_set)
cwlVersion: v1.1
baseCommand:
- RTModel
