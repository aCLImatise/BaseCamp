class: CommandLineTool
id: PTModel.cwl
inputs:
- id: in_in_positive
  doc: "*            Input file with positive examples (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_positive
- id: in_in_negative
  doc: "*            Input file with negative examples (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_negative
- id: in_out
  doc: "*                    Output file: the model in libsvm format (valid formats:\
    \ 'txt')"
  type: File
  inputBinding:
    prefix: -out
- id: in_penalty_parameter_svm
  doc: "The penalty parameter of the svm (default: '1')"
  type: double
  inputBinding:
    prefix: -c
- id: in_svm_type
  doc: "The type of the svm (NU_SVC or C_SVC) (default: 'C_SVC' valid: 'NU_SVC', 'C_SVC')"
  type: string
  inputBinding:
    prefix: -svm_type
- id: in_nu
  doc: "The nu parameter [0..1] of the svm (for nu-SVR) (default: '0.5' min: '0' max:\
    \ '1')"
  type: double
  inputBinding:
    prefix: -nu
- id: in_kernel_type
  doc: "The kernel type of the svm (default: 'OLIGO' valid: 'LINEAR', 'RBF', 'POLY',\
    \ 'OLIGO')"
  type: string
  inputBinding:
    prefix: -kernel_type
- id: in_degree
  doc: "The degree parameter of the kernel function of the svm (POLY kernel) (default:\
    \ '1' min: '1')"
  type: long
  inputBinding:
    prefix: -degree
- id: in_border_length
  doc: "Length of the POBK (default: '22' min: '1')"
  type: long
  inputBinding:
    prefix: -border_length
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
- id: in_max_positive_count
  doc: "Quantity of positive samples for training (randomly chosen if smaller than\
    \ available quantity) (default: '1000' min: '1')"
  type: long
  inputBinding:
    prefix: -max_positive_count
- id: in_max_negative_count
  doc: "Quantity of positive samples for training (randomly chosen if smaller than\
    \ available quantity) (default: '1000' min: '1')"
  type: long
  inputBinding:
    prefix: -max_negative_count
- id: in_redundant
  doc: If the input sets are redundant and the redundant peptides should occur more
    than once in the training set, this flag has to be set
  type: boolean
  inputBinding:
    prefix: -redundant
- id: in_additive_cv
  doc: If the step sizes should be interpreted additively (otherwise the actual value
    is multiplied with the step size to get the new value
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
cwlVersion: v1.1
baseCommand:
- PTModel
