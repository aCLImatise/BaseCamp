version 1.0

task PTModel {
  input {
    File? in_positive
    File? in_negative
    File? out
    Float? penalty_parameter_svm
    String? svm_type
    Float? nu
    String? kernel_type
    Int? degree
    Int? border_length
    Int? k_mer_length
    Float? sigma
    Int? max_positive_count
    Int? max_negative_count
    Boolean? redundant
    Boolean? additive_cv
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PTModel \
      ~{if defined(in_positive) then ("-in_positive " +  '"' + in_positive + '"') else ""} \
      ~{if defined(in_negative) then ("-in_negative " +  '"' + in_negative + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(penalty_parameter_svm) then ("-c " +  '"' + penalty_parameter_svm + '"') else ""} \
      ~{if defined(svm_type) then ("-svm_type " +  '"' + svm_type + '"') else ""} \
      ~{if defined(nu) then ("-nu " +  '"' + nu + '"') else ""} \
      ~{if defined(kernel_type) then ("-kernel_type " +  '"' + kernel_type + '"') else ""} \
      ~{if defined(degree) then ("-degree " +  '"' + degree + '"') else ""} \
      ~{if defined(border_length) then ("-border_length " +  '"' + border_length + '"') else ""} \
      ~{if defined(k_mer_length) then ("-k_mer_length " +  '"' + k_mer_length + '"') else ""} \
      ~{if defined(sigma) then ("-sigma " +  '"' + sigma + '"') else ""} \
      ~{if defined(max_positive_count) then ("-max_positive_count " +  '"' + max_positive_count + '"') else ""} \
      ~{if defined(max_negative_count) then ("-max_negative_count " +  '"' + max_negative_count + '"') else ""} \
      ~{if (redundant) then "-redundant" else ""} \
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
    in_positive: "*            Input file with positive examples (valid formats: 'idXML')"
    in_negative: "*            Input file with negative examples (valid formats: 'idXML')"
    out: "*                    Output file: the model in libsvm format (valid formats: 'txt')"
    penalty_parameter_svm: "The penalty parameter of the svm (default: '1.0')"
    svm_type: "The type of the svm (NU_SVC or C_SVC) (default: 'C_SVC' valid: 'NU_SVC', 'C_SVC')"
    nu: "The nu parameter [0..1] of the svm (for nu-SVR) (default: '0.5' min: '0.0' max: '1.0')"
    kernel_type: "The kernel type of the svm (default: 'OLIGO' valid: 'LINEAR', 'RBF', 'POLY', 'OLIGO')"
    degree: "The degree parameter of the kernel function of the svm (POLY kernel) (default: '1' min: '1')"
    border_length: "Length of the POBK (default: '22' min: '1')"
    k_mer_length: "K_mer length of the POBK (default: '1' min: '1')"
    sigma: "Sigma of the POBK (default: '5.0')"
    max_positive_count: "Quantity of positive samples for training (randomly chosen if smaller than available quantity) (default: '1000' min: '1')"
    max_negative_count: "Quantity of positive samples for training (randomly chosen if smaller than available quantity) (default: '1000' min: '1')"
    redundant: "If the input sets are redundant and the redundant peptides should occur more than once in the training set, this flag has to be set"
    additive_cv: "If the step sizes should be interpreted additively (otherwise the actual value is multiplied with the step size to get the new value"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}