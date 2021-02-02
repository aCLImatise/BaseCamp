version 1.0

task Svmscale {
  input {
    Int? scaling_lower_default
    Int? scaling_upper_limit
    String? y_scaling_limits
    File? save_scaling_parameters
    File? restore_scaling_parameters
    String data_filename
  }
  command <<<
    svm_scale \
      ~{data_filename} \
      ~{if defined(scaling_lower_default) then ("-l " +  '"' + scaling_lower_default + '"') else ""} \
      ~{if defined(scaling_upper_limit) then ("-u " +  '"' + scaling_upper_limit + '"') else ""} \
      ~{if defined(y_scaling_limits) then ("-y " +  '"' + y_scaling_limits + '"') else ""} \
      ~{if defined(save_scaling_parameters) then ("-s " +  '"' + save_scaling_parameters + '"') else ""} \
      ~{if defined(restore_scaling_parameters) then ("-r " +  '"' + restore_scaling_parameters + '"') else ""}
  >>>
  parameter_meta {
    scaling_lower_default: ": x scaling lower limit (default -1)"
    scaling_upper_limit: ": x scaling upper limit (default +1)"
    y_scaling_limits: "y_upper : y scaling limits (default: no y scaling)"
    save_scaling_parameters: ": save scaling parameters to save_filename"
    restore_scaling_parameters: ": restore scaling parameters from restore_filename"
    data_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}