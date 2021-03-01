version 1.0

task GsutilSignurl {
  input {
    Boolean? specifies_http_method
    Boolean? specifies_duration_be
    Boolean? specifies_content_type
    Boolean? specify_keystore_password
    String documentation_dot
  }
  command <<<
    gsutil signurl \
      ~{documentation_dot} \
      ~{if (specifies_http_method) then "-m" else ""} \
      ~{if (specifies_duration_be) then "-d" else ""} \
      ~{if (specifies_content_type) then "-c" else ""} \
      ~{if (specify_keystore_password) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifies_http_method: "Specifies the HTTP method to be authorized for use\\nwith the signed url, default is GET. You may also specify\\nRESUMABLE to create a signed resumable upload start URL. When\\nusing a signed URL to start a resumable upload session, you will\\nneed to specify the 'x-goog-resumable:start' header in the\\nrequest or else signature validation will fail."
    specifies_duration_be: "Specifies the duration that the signed url should be valid\\nfor, default duration is 1 hour.\\nTimes may be specified with no suffix (default hours), or\\nwith s = seconds, m = minutes, h = hours, d = days.\\nThis option may be specified multiple times, in which case\\nthe duration the link remains valid is the sum of all the\\nduration options."
    specifies_content_type: "Specifies the content type for which the signed url is\\nvalid for."
    specify_keystore_password: "Specify the keystore password instead of prompting."
    documentation_dot: "<https://cloud.google.com/storage/docs/authentication#generating-a-private-key>`_"
  }
  output {
    File out_stdout = stdout()
  }
}