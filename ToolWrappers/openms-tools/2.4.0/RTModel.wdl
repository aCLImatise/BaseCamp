version 1.0

task RTModel {
  input {
    File? in
    File? in_positive
    File? in_negative
    File? out
    File? out_oligo_params
    File? out_oligo_train_set
    String? svm_type
    Float? nu
    Float? epsilon_parameter_svm
    Float? penalty_parameter_svm
    String? kernel_type
    Int? degree
    Int? border_length
    Float? max_std
    Int? k_mer_length
    Float? sigma
    Int? total_gradient_time
    Boolean? first_dim_rt
    Boolean? additive_cv
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    RTModel \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_positive) then ("-in_positive " +  '"' + in_positive + '"') else ""} \
      ~{if defined(in_negative) then ("-in_negative " +  '"' + in_negative + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_oligo_params) then ("-out_oligo_params " +  '"' + out_oligo_params + '"') else ""} \
      ~{if defined(out_oligo_train_set) then ("-out_oligo_trainset " +  '"' + out_oligo_train_set + '"') else ""} \
      ~{if defined(svm_type) then ("-svm_type " +  '"' + svm_type + '"') else ""} \
      ~{if defined(nu) then ("-nu " +  '"' + nu + '"') else ""} \
      ~{if defined(epsilon_parameter_svm) then ("-p " +  '"' + epsilon_parameter_svm + '"') else ""} \
      ~{if defined(penalty_parameter_svm) then ("-c " +  '"' + penalty_parameter_svm + '"') else ""} \
      ~{if defined(kernel_type) then ("-kernel_type " +  '"' + kernel_type + '"') else ""} \
      ~{if defined(degree) then ("-degree " +  '"' + degree + '"') else ""} \
      ~{if defined(border_length) then ("-border_length " +  '"' + border_length + '"') else ""} \
      ~{if defined(max_std) then ("-max_std " +  '"' + max_std + '"') else ""} \
      ~{if defined(k_mer_length) then ("-k_mer_length " +  '"' + k_mer_length + '"') else ""} \
      ~{if defined(sigma) then ("-sigma " +  '"' + sigma + '"') else ""} \
      ~{if defined(total_gradient_time) then ("-total_gradient_time " +  '"' + total_gradient_time + '"') else ""} \
      ~{if (first_dim_rt) then "-first_dim_rt" else ""} \
      ~{if (additive_cv) then "-additive_cv" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "This is the name of the input file (RT prediction). It is assumed that the file type is idXML. Alternatively you can provide a .txt file having a sequence and the corresponding rt per line.\\n(valid formats: 'idXML', 'txt')"
    in_positive: "Input file with positive examples (peptide separation prediction)\\n(valid formats: 'idXML')"
    in_negative: "Input file with negative examples (peptide separation prediction)\\n(valid formats: 'idXML')"
    out: "*                    Output file: the model in libsvm format (valid formats: 'txt')"
    out_oligo_params: "Output file with additional model parameters when using the OLIGO kernel (valid formats: 'paramXML')"
    out_oligo_train_set: "Output file with the used training dataset when using the OLIGO kernel (valid formats: 'txt')"
    svm_type: "The type of the svm (NU_SVR or EPSILON_SVR for RT prediction, automatically set\\nto C_SVC for separation prediction)\\n(default: 'NU_SVR' valid: 'NU_SVR', 'NU_SVC', 'EPSILON_SVR', 'C_SVC')"
    nu: "The nu parameter [0..1] of the svm (for nu-SVR) (default: '0.5' min: '0' max: '1')"
    epsilon_parameter_svm: "The epsilon parameter of the svm (for epsilon-SVR) (default: '0.1')"
    penalty_parameter_svm: "The penalty parameter of the svm (default: '1')"
    kernel_type: "The kernel type of the svm (default: 'OLIGO' valid: 'LINEAR', 'RBF', 'POLY', 'OLIGO')"
    degree: "The degree parameter of the kernel function of the svm (POLY kernel)\\n(default: '1' min: '1')"
    border_length: "Length of the POBK (default: '22' min: '1')"
    max_std: "Max standard deviation for a peptide to be included (if there are several ones for one peptide string)(median is taken) (default: '10' min: '0')"
    k_mer_length: "K_mer length of the POBK (default: '1' min: '1')"
    sigma: "Sigma of the POBK (default: '5')"
    total_gradient_time: "The time (in seconds) of the gradient (only for RT prediction) (default: '1' min: '1e-05')"
    first_dim_rt: "If set the model will be built for first_dim_rt"
    additive_cv: "If the step sizes should be interpreted additively (otherwise the actual value is multiplied\\nwith the step size to get the new value"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_oligo_params = "${in_out_oligo_params}"
    File out_out_oligo_train_set = "${in_out_oligo_train_set}"
  }
}