version 1.0

task GsutilIam {
  input {
    Boolean? performs_recursively_objects
    Boolean? performs_request_object
    String? performs_precondition_check
    Boolean? default_gsutil_error
  }
  command <<<
    gsutil iam \
      ~{true="-R" false="" performs_recursively_objects} \
      ~{true="-a" false="" performs_request_object} \
      ~{if defined(performs_precondition_check) then ("-e " +  '"' + performs_precondition_check + '"') else ""} \
      ~{true="-f" false="" default_gsutil_error}
  >>>
  parameter_meta {
    performs_recursively_objects: "Performs \"iam set\" recursively to all objects under the specified bucket."
    performs_request_object: "Performs \"iam set\" request on all object versions."
    performs_precondition_check: "Performs the precondition check on each object with the specified etag before setting the policy."
    default_gsutil_error: "Default gsutil error handling is fail-fast. This flag changes the request to fail-silent mode. This is implicitly set when invoking the gsutil -m option."
  }
}