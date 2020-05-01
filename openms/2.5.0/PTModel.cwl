#!/usr/bin/env cwl-runner

baseCommand:
- PTModel
class: CommandLineTool
cwlVersion: v1.0
id: ptmodel
inputs:
- doc: "*            Input file with positive examples (valid formats: 'idXML')"
  id: in_positive
  inputBinding:
    prefix: -in_positive
  type: File
- doc: "*            Input file with negative examples (valid formats: 'idXML')"
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
- doc: "The penalty parameter of the svm (default: '1.0')"
  id: c
  inputBinding:
    prefix: -c
  type: double
- doc: "The type of the svm (NU_SVC or C_SVC) (default: 'C_SVC' valid: 'NU_SVC', 'C_SVC')"
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
- doc: "Quantity of positive samples for training (randomly chosen if smaller than\
    \ available quantity) (default: '1000' min: '1')"
  id: max_positive_count
  inputBinding:
    prefix: -max_positive_count
  type: long
- doc: "Quantity of positive samples for training (randomly chosen if smaller than\
    \ available quantity) (default: '1000' min: '1')"
  id: max_negative_count
  inputBinding:
    prefix: -max_negative_count
  type: long
- doc: If the input sets are redundant and the redundant peptides should occur more
    than once in the training set, this flag has to be set
  id: redundant
  inputBinding:
    prefix: -redundant
  type: boolean
- doc: If the step sizes should be interpreted additively (otherwise the actual value
    is multiplied with the step size to get the new value
  id: additive_cv
  inputBinding:
    prefix: -additive_cv
  type: boolean
- doc: :skip_cv                     Has to be set if the cv should be skipped and
    the model should just be trained with the specified parameters.
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":number_of_runs <int>        Number of runs for the CV (default: '10' min:\
    \ '1')"
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
- doc: ":c_start <float>             Starting point of c (default: '1.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":c_step_size <float>         Step size of c (default: '100.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":c_stop <float>              Stopping point of c (default: '1000.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":nu_start <float>            Starting point of nu (default: '0.1' min: '0.0'\
    \ max: '1.0')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":nu_step_size <float>        Step size of nu (default: '1.3')"
  id: cv
  inputBinding:
    prefix: -cv
  type: boolean
- doc: ":nu_stop <float>             Stopping point of nu (default: '0.9' min: '0.0'\
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
