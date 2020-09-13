version 1.0

task Fumalisttobooleanlist {
  input {
    String? true_value
    String? false_value
    File? output_filename_stdout
  }
  command <<<
    fuma_list_to_boolean_list \
      ~{if defined(true_value) then ("--true_value " +  '"' + true_value + '"') else ""} \
      ~{if defined(false_value) then ("--false_value " +  '"' + false_value + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""}
  >>>
  parameter_meta {
    true_value: ""
    false_value: ""
    output_filename_stdout: "output filename; '-' for stdout"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_stdout = "${in_output_filename_stdout}"
  }
}