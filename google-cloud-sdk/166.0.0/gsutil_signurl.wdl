version 1.0

task GsutilSignurl {
  input {
    Boolean? specifies_method_authorized
    Boolean? specifies_duration_signed
    Boolean? specifies_content_type
    Boolean? specify_keystore_password
  }
  command <<<
    gsutil signurl \
      ~{true="-m" false="" specifies_method_authorized} \
      ~{true="-d" false="" specifies_duration_signed} \
      ~{true="-c" false="" specifies_content_type} \
      ~{true="-p" false="" specify_keystore_password}
  >>>
  parameter_meta {
    specifies_method_authorized: "Specifies the HTTP method to be authorized for use with the signed url, default is GET. You may also specify RESUMABLE to create a signed resumable upload start URL. When using a signed URL to start a resumable upload session, you will need to specify the 'x-goog-resumable:start' header in the request or else signature validation will fail."
    specifies_duration_signed: "Specifies the duration that the signed url should be valid for, default duration is 1 hour. Times may be specified with no suffix (default hours), or with s = seconds, m = minutes, h = hours, d = days. This option may be specified multiple times, in which case the duration the link remains valid is the sum of all the duration options."
    specifies_content_type: "Specifies the content type for which the signed url is valid for."
    specify_keystore_password: "Specify the keystore password instead of prompting."
  }
}