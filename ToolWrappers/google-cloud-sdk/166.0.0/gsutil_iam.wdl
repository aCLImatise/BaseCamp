version 1.0

task GsutilIam {
  input {
    Boolean? i_d
    Boolean? performs_recursively_objects
    Boolean? performs_request_object
    String? performs_precondition_check
    Boolean? default_gsutil_error
    String efficiently_dot
  }
  command <<<
    gsutil iam \
      ~{efficiently_dot} \
      ~{if (i_d) then "-d" else ""} \
      ~{if (performs_recursively_objects) then "-R" else ""} \
      ~{if (performs_request_object) then "-a" else ""} \
      ~{if defined(performs_precondition_check) then ("-e " +  '"' + performs_precondition_check + '"') else ""} \
      ~{if (default_gsutil_error) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i_d: "(\\\"user\\\"|\\\"serviceAccount\\\"|\\\"domain\\\"|\\\"group\\\"):id"
    performs_recursively_objects: "Performs \\\"iam set\\\" recursively to all objects under the\\nspecified bucket."
    performs_request_object: "Performs \\\"iam set\\\" request on all object versions."
    performs_precondition_check: "Performs the precondition check on each object with the\\nspecified etag before setting the policy."
    default_gsutil_error: "Default gsutil error handling is fail-fast. This flag\\nchanges the request to fail-silent mode. This is implicitly\\nset when invoking the gsutil -m option."
    efficiently_dot: "CH EXAMPLES"
  }
  output {
    File out_stdout = stdout()
  }
}