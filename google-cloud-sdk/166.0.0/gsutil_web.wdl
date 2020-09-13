version 1.0

task GsutilWeb {
  input {
    String? specifies_object_name
    Int? specifies_error_page
    String page_dot
  }
  command <<<
    gsutil web \
      ~{page_dot} \
      ~{if defined(specifies_object_name) then ("-m " +  '"' + specifies_object_name + '"') else ""} \
      ~{if defined(specifies_error_page) then ("-e " +  '"' + specifies_error_page + '"') else ""}
  >>>
  parameter_meta {
    specifies_object_name: "Specifies the object name to serve when a bucket\\nlisting is requested via the CNAME alias to\\nc.storage.googleapis.com."
    specifies_error_page: "Specifies the error page to serve when a request is made\\nfor a non-existent object via the CNAME alias to\\nc.storage.googleapis.com."
    page_dot: "For example, suppose your company's Domain name is example.com. You could set"
  }
  output {
    File out_stdout = stdout()
  }
}