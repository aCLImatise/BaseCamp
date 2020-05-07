class: CommandLineTool
id: RTModel.cwl
inputs:
- id: in
  doc: "This is the name of the input file (RT prediction). It is assumed that the\
    \ file type is idXML. Alternatively you can provide a .txt file having a sequence\
    \ and the corresponding rt per line. (valid formats: 'idXML', 'txt')"
  type: File
  inputBinding:
    prefix: -in
- id: in_positive
  doc: "Input file with positive examples (peptide separation prediction) (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -in_positive
- id: in_negative
  doc: "Input file with negative examples (peptide separation prediction) (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -in_negative
- id: out
  doc: "*                    Output file: the model in libsvm format (valid formats:\
    \ 'txt')"
  type: File
  inputBinding:
    prefix: -out
- id: out_oligo_params
  doc: "Output file with additional model parameters when using the OLIGO kernel (valid\
    \ formats: 'paramXML')"
  type: File
  inputBinding:
    prefix: -out_oligo_params
- id: out_oligo_train_set
  doc: "Output file with the used training dataset when using the OLIGO kernel (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -out_oligo_trainset
- id: svm_type
  doc: "The type of the svm (NU_SVR or EPSILON_SVR for RT prediction, automatically\
    \ set to C_SVC for separation prediction) (default: 'NU_SVR' valid: 'NU_SVR',\
    \ 'NU_SVC', 'EPSILON_SVR', 'C_SVC')"
  type: string
  inputBinding:
    prefix: -svm_type
- id: nu
  doc: "The nu parameter [0..1] of the svm (for nu-SVR) (default: '0.5' min: '0' max:\
    \ '1')"
  type: double
  inputBinding:
    prefix: -nu
- id: p
  doc: "The epsilon parameter of the svm (for epsilon-SVR) (default: '0.1')"
  type: double
  inputBinding:
    prefix: -p
- id: c
  doc: "The penalty parameter of the svm (default: '1')"
  type: double
  inputBinding:
    prefix: -c
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
- id: max_std
  doc: "Max standard deviation for a peptide to be included (if there are several\
    \ ones for one peptide string)(median is taken) (default: '10' min: '0')"
  type: double
  inputBinding:
    prefix: -max_std
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
- id: total_gradient_time
  doc: "The time (in seconds) of the gradient (only for RT prediction) (default: '1'\
    \ min: '1e-05')"
  type: string
  inputBinding:
    prefix: -total_gradient_time
- id: first_dim_rt
  doc: If set the model will be built for first_dim_rt
  type: boolean
  inputBinding:
    prefix: -first_dim_rt
- id: additive_cv
  doc: If the step sizes should be interpreted additively (otherwise the actual value
    is multiplied with the step size to get the new value
  type: boolean
  inputBinding:
    prefix: -additive_cv
- id: cv
  doc: :skip_cv                     Set to enable Cross-Validation or set to true
    if the model should just be trained with 1 set of specified parameters.
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":number_of_runs <int>        Number of runs for the CV (each run creates a\
    \ new random partition of the data) (default: '1' min: '1')"
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
  doc: ":p_start <float>             Starting point of p (default: '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":p_step_size <float>         Step size point of p (default: '10')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":p_stop <float>              Stopping point of p (default: '1000')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":c_start <float>             Starting point of c (default: '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":c_step_size <float>         Step size of c (default: '10')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":c_stop <float>              Stopping point of c (default: '1000')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":nu_start <float>            Starting point of nu (default: '0.3' min: '0'\
    \ max: '1')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":nu_step_size <float>        Step size of nu (default: '1.2')"
  type: boolean
  inputBinding:
    prefix: -cv
- id: cv
  doc: ":nu_stop <float>             Stopping point of nu (default: '0.7' min: '0'\
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
- RTModel
