version 1.0

task Fumalisttobooleanlist {
  input {
    File? false_value
  }
  command <<<
    fuma_list_to_boolean_list \
      ~{if defined(false_value) then ("--false_value " +  '"' + false_value + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    false_value: "output filename; '-' for stdout"
  }
  output {
    File out_stdout = stdout()
    File out_false_value = "${in_false_value}"
  }
}