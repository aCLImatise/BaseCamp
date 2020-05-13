class: CommandLineTool
id: PTModel.cwl
inputs:
- id: in_positive
  doc: "*            Input file with positive examples (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_positive
- id: in_negative
  doc: "*            Input file with negative examples (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_negative
- id: out
  doc: "*                    Output file: the model in libsvm format (valid formats:\
    \ 'txt')"
  type: File
  inputBinding:
    prefix: -out
- id: c
  doc: "The penalty parameter of the svm (default: '1')"
  type: double
  inputBinding:
    prefix: -c
- id: svm_type
  doc: "The type of the svm (NU_SVC or C_SVC) (default: 'C_SVC' valid: 'NU_SVC', 'C_SVC')"
  type: string
  inputBinding:
    prefix: -svm_type
- id: nu
  doc: "The nu parameter [0..1] of the svm (for nu-SVR) (default: '0.5' min: '0' max:\
    \ '1')"
  type: double
  inputBinding:
    prefix: -nu
- id: kernel_type
  doc: "The kernel type of the svm (default: 'OLIGO' valid: 'LINEAR', 'RBF', 'POLY',\
    \ 'OLIGO')"
  type: string
  inputBinding:
    prefix: -kernel_type
- id: degree
  doc: "The degree parameter of the kernel function of the svm (POLY kernel) (default:\
    \ '1' min: '1')"
  type: long
  inputBinding:
    prefix: -degree
- id: border_length
  doc: "Length of the POBK (default: '22' min: '1')"
  type: long
  inputBinding:
    prefix: -border_length
- id: k_mer_length
  doc: "K_mer length of the POBK (default: '1' min: '1')"
  type: long
  inputBinding:
    prefix: -k_mer_length
- id: sigma
  doc: "Sigma of the POBK (default: '5')"
  type: double
  inputBinding:
    prefix: -sigma
- id: max_positive_count
  doc: "Quantity of positive samples for training (randomly chosen if smaller than\
    \ available quantity) (default: '1000' min: '1')"
  type: long
  inputBinding:
    prefix: -max_positive_count
- id: max_negative_count
  doc: "Quantity of positive samples for training (randomly chosen if smaller than\
    \ available quantity) (default: '1000' min: '1')"
  type: long
  inputBinding:
    prefix: -max_negative_count
- id: redundant
  doc: If the input sets are redundant and the redundant peptides should occur more
    than once in the training set, this flag has to be set
  type: boolean
  inputBinding:
    prefix: -redundant
- id: additive_cv
  doc: If the step sizes should be interpreted additively (otherwise the actual value
    is multiplied with the step size to get the new value
  type: boolean
  inputBinding:
    prefix: -additive_cv
- id: cv
  doc: :skip_cv                     Has to be set if the cv should be skipped and
    the model should just be trained with the specified parameters.
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":number_of_runs <int>        Number of runs for the CV (default: '10' min:\
    \ '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":number_of_partitions <int>  Number of CV partitions (default: '10' min: '2')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":degree_start <int>          Starting point of degree (default: '1' min: '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":degree_step_size <int>      Step size point of degree (default: '2')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":degree_stop <int>           Stopping point of degree (default: '4')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":c_start <float>             Starting point of c (default: '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":c_step_size <float>         Step size of c (default: '100')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":c_stop <float>              Stopping point of c (default: '1000')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":nu_start <float>            Starting point of nu (default: '0.1' min: '0'\
    \ max: '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":nu_step_size <float>        Step size of nu (default: '1.3')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":nu_stop <float>             Stopping point of nu (default: '0.9' min: '0'\
    \ max: '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":sigma_start <float>         Starting point of sigma (default: '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":sigma_step_size <float>     Step size of sigma (default: '1.3')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":sigma_stop <float>          Stopping point of sigma (default: '15')"
  type: boolean
  inputBinding:
    prefix: -cv
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
- PTModel
