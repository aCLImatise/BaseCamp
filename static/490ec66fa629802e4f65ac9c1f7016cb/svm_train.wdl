version 1.0

task Svmtrain {
  input {
    Int? set_type_svm_
    Int? set_type_kernel_
    Int? set_degree_kernel
    Int? set_gamma_kernel
    Int? set_coef_kernel
    Int? set_c_csvc
    Float? set_parameter_nusvc
    Float? set_epsilon_loss
    Int? set_memory_size
    Float? set_tolerance_termination
    Int? use_shrinking_heuristics
    Int? train_svc_model
    Int? wi
    String? cross_validation_mode
    Boolean? quiet_mode_outputs
    Boolean? _log_file
    String training_set_file
    String? model_file
  }
  command <<<
    svm_train \
      ~{training_set_file} \
      ~{model_file} \
      ~{if defined(set_type_svm_) then ("-s " +  '"' + set_type_svm_ + '"') else ""} \
      ~{if defined(set_type_kernel_) then ("-t " +  '"' + set_type_kernel_ + '"') else ""} \
      ~{if defined(set_degree_kernel) then ("-d " +  '"' + set_degree_kernel + '"') else ""} \
      ~{if defined(set_gamma_kernel) then ("-g " +  '"' + set_gamma_kernel + '"') else ""} \
      ~{if defined(set_coef_kernel) then ("-r " +  '"' + set_coef_kernel + '"') else ""} \
      ~{if defined(set_c_csvc) then ("-c " +  '"' + set_c_csvc + '"') else ""} \
      ~{if defined(set_parameter_nusvc) then ("-n " +  '"' + set_parameter_nusvc + '"') else ""} \
      ~{if defined(set_epsilon_loss) then ("-p " +  '"' + set_epsilon_loss + '"') else ""} \
      ~{if defined(set_memory_size) then ("-m " +  '"' + set_memory_size + '"') else ""} \
      ~{if defined(set_tolerance_termination) then ("-e " +  '"' + set_tolerance_termination + '"') else ""} \
      ~{if defined(use_shrinking_heuristics) then ("-h " +  '"' + use_shrinking_heuristics + '"') else ""} \
      ~{if defined(train_svc_model) then ("-b " +  '"' + train_svc_model + '"') else ""} \
      ~{if defined(wi) then ("-wi " +  '"' + wi + '"') else ""} \
      ~{if defined(cross_validation_mode) then ("-v " +  '"' + cross_validation_mode + '"') else ""} \
      ~{if (quiet_mode_outputs) then "-q" else ""} \
      ~{if (_log_file) then "-l" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_type_svm_: ": set type of SVM (default 0)\\n0 -- C-SVC              (multi-class classification)\\n1 -- nu-SVC             (multi-class classification)\\n2 -- one-class SVM\\n3 -- epsilon-SVR        (regression)\\n4 -- nu-SVR             (regression)"
    set_type_kernel_: ": set type of kernel function (default 2)\\n0 -- linear: u'*v\\n1 -- polynomial: (gamma*u'*v + coef0)^degree\\n2 -- radial basis function: exp(-gamma*|u-v|^2)\\n3 -- sigmoid: tanh(gamma*u'*v + coef0)\\n4 -- precomputed kernel (kernel values in training_set_file)"
    set_degree_kernel: ": set degree in kernel function (default 3)"
    set_gamma_kernel: ": set gamma in kernel function (default 1/num_features)"
    set_coef_kernel: ": set coef0 in kernel function (default 0)"
    set_c_csvc: ": set the parameter C of C-SVC, epsilon-SVR, and nu-SVR (default 1)"
    set_parameter_nusvc: ": set the parameter nu of nu-SVC, one-class SVM, and nu-SVR (default 0.5)"
    set_epsilon_loss: ": set the epsilon in loss function of epsilon-SVR (default 0.1)"
    set_memory_size: ": set cache memory size in MB (default 100)"
    set_tolerance_termination: ": set tolerance of termination criterion (default 0.001)"
    use_shrinking_heuristics: ": whether to use the shrinking heuristics, 0 or 1 (default 1)"
    train_svc_model: ": whether to train a SVC or SVR model for probability estimates, 0 or 1 (default 0)"
    wi: ": set the parameter C of class i to weight*C, for C-SVC (default 1)"
    cross_validation_mode: ": n-fold cross validation mode"
    quiet_mode_outputs: ": quiet mode (no outputs)"
    _log_file: ": log file"
    training_set_file: ""
    model_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}