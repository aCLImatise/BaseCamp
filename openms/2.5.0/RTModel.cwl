#!/usr/bin/env cwl-runner

baseCommand:
- RTModel
class: CommandLineTool
cwlVersion: v1.0
id: rtmodel
inputs:
- doc: "This is the name of the input file (RT prediction). It is assumed that the\
    \ file type is idXML. Alternatively you can provide a .txt file having a sequence\
    \ and the corresponding rt per line. (valid formats: 'idXML', 'txt')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file with positive examples (peptide separation prediction) (valid formats:\
    \ 'idXML')"
  id: in_positive
  inputBinding:
    prefix: -in_positive
  type: File
- doc: "Input file with negative examples (peptide separation prediction) (valid formats:\
    \ 'idXML')"
  id: in_negative
  inputBinding:
    prefix: -in_negative
  type: File
- doc: "*                    Output file: the model in libsvm format (valid formats:\
    \ 'txt')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file with additional model parameters when using the OLIGO kernel (valid\
    \ formats: 'paramXML')"
  id: out_oligo_params
  inputBinding:
    prefix: -out_oligo_params
  type: File
- doc: "Output file with the used training dataset when using the OLIGO kernel (valid\
    \ formats: 'txt')"
  id: out_oligo_train_set
  inputBinding:
    prefix: -out_oligo_trainset
  type: File
- doc: "The type of the svm (NU_SVR or EPSILON_SVR for RT prediction, automatically\
    \ set to C_SVC for separation prediction) (default: 'NU_SVR' valid: 'NU_SVR',\
    \ 'NU_SVC', 'EPSILON_SVR', 'C_SVC')"
  id: svm_type
  inputBinding:
    prefix: -svm_type
  type: string
- doc: "The nu parameter [0..1] of the svm (for nu-SVR) (default: '0.5' min: '0.0'\
    \ max: '1.0')"
  id: nu
  inputBinding:
    prefix: -nu
  type: double
- doc: "The epsilon parameter of the svm (for epsilon-SVR) (default: '0.1')"
  id: p
  inputBinding:
    prefix: -p
  type: double
- doc: "The penalty parameter of the svm (default: '1.0')"
  id: c
  inputBinding:
    prefix: -c
  type: double
- doc: "The kernel type of the svm (default: 'OLIGO' valid: 'LINEAR', 'RBF', 'POLY',\
    \ 'OLIGO')"
  id: kernel_type
  inputBinding:
    prefix: -kernel_type
  type: string
- doc: "The degree parameter of the kernel function of the svm (POLY kernel) (default:\
    \ '1' min: '1')"
  id: degree
  inputBinding:
    prefix: -degree
  type: long
- doc: "Length of the POBK (default: '22' min: '1')"
  id: border_length
  inputBinding:
    prefix: -border_length
  type: long
- doc: "Max standard deviation for a peptide to be included (if there are several\
    \ ones for one peptide string)(median is taken) (default: '10.0' min: '0.0')"
  id: max_std
  inputBinding:
    prefix: -max_std
  type: double
- doc: "K_mer length of the POBK (default: '1' min: '1')"
  id: k_mer_length
  inputBinding:
    prefix: -k_mer_length
  type: long
- doc: "Sigma of the POBK (default: '5.0')"
  id: sigma
  inputBinding:
    prefix: -sigma
  type: double
- doc: "The time (in seconds) of the gradient (only for RT prediction) (default: '1.0'\
    \ min: '1.0e-05')"
  id: total_gradient_time
  inputBinding:
    prefix: -total_gradient_time
  type: string
- doc: If set the model will be built for first_dim_rt
  id: first_dim_rt
  inputBinding:
    prefix: -first_dim_rt
  type: boolean
- doc: If the step sizes should be interpreted additively (otherwise the actual value
    is multiplied with the step size to get the new value
  id: additive_cv
  inputBinding:
    prefix: -additive_cv
  type: boolean
- doc: :skip_cv                     Set to enable Cross-Validation or set to true
    if the model should just be trained with 1 set of specified parameters.
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":number_of_runs <int>        Number of runs for the CV (each run creates a\
    \ new random partition of the data) (default: '1' min: '1')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":number_of_partitions <int>  Number of CV partitions (default: '10' min: '2')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":degree_start <int>          Starting point of degree (default: '1' min: '1')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":degree_step_size <int>      Step size point of degree (default: '2')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":degree_stop <int>           Stopping point of degree (default: '4')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":p_start <float>             Starting point of p (default: '1.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":p_step_size <float>         Step size point of p (default: '10.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":p_stop <float>              Stopping point of p (default: '1000.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":c_start <float>             Starting point of c (default: '1.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":c_step_size <float>         Step size of c (default: '10.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":c_stop <float>              Stopping point of c (default: '1000.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":nu_start <float>            Starting point of nu (default: '0.3' min: '0.0'\
    \ max: '1.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":nu_step_size <float>        Step size of nu (default: '1.2')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":nu_stop <float>             Stopping point of nu (default: '0.7' min: '0.0'\
    \ max: '1.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":sigma_start <float>         Starting point of sigma (default: '1.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":sigma_step_size <float>     Step size of sigma (default: '1.3')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":sigma_stop <float>          Stopping point of sigma (default: '15.0')"
  id: cv
  inputBinding:
    prefix: -cv
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
