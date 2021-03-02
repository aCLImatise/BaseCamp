version 1.0

task Svmscale {
  input {
    Int? scaling_lower_limit_default
    Int? scaling_upper_limit_default
    String? scaling_limits_default
    File? save_scaling_parameters
    File? restore_scaling_parameters
    String data_filename
  }
  command <<<
    svm_scale \
      ~{data_filename} \
      ~{if defined(scaling_lower_limit_default) then ("-l " +  '"' + scaling_lower_limit_default + '"') else ""} \
      ~{if defined(scaling_upper_limit_default) then ("-u " +  '"' + scaling_upper_limit_default + '"') else ""} \
      ~{if defined(scaling_limits_default) then ("-y " +  '"' + scaling_limits_default + '"') else ""} \
      ~{if defined(save_scaling_parameters) then ("-s " +  '"' + save_scaling_parameters + '"') else ""} \
      ~{if defined(restore_scaling_parameters) then ("-r " +  '"' + restore_scaling_parameters + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    scaling_lower_limit_default: ": x scaling lower limit (default -1)"
    scaling_upper_limit_default: ": x scaling upper limit (default +1)"
    scaling_limits_default: "y_upper : y scaling limits (default: no y scaling)"
    save_scaling_parameters: ": save scaling parameters to save_filename"
    restore_scaling_parameters: ": restore scaling parameters from restore_filename"
    data_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}