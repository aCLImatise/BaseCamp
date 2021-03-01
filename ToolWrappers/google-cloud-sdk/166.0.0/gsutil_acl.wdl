version 1.0

task GsutilAcl {
  input {
    String? u
    String? g
    Int? project_number
    Boolean? idemaildomainallallauthviewerseditorsownersproject_number
    Boolean? performs_request_recursively
    Boolean? performs_request_object
    Boolean? normally_gsutil_stops
  }
  command <<<
    gsutil acl \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(project_number) then ("-p " +  '"' + project_number + '"') else ""} \
      ~{if (idemaildomainallallauthviewerseditorsownersproject_number) then "-d" else ""} \
      ~{if (performs_request_recursively) then "-R" else ""} \
      ~{if (performs_request_object) then "-a" else ""} \
      ~{if (normally_gsutil_stops) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    u: ":<perm>"
    g: ":<perm>"
    project_number: "-<project number>"
    idemaildomainallallauthviewerseditorsownersproject_number: "<id|email|domain|All|AllAuth|<viewers|editors|owners>-<project number>>"
    performs_request_recursively: "Performs \\\"acl set\\\" request recursively, to all objects under\\nthe specified URL."
    performs_request_object: "Performs \\\"acl set\\\" request on all object versions."
    normally_gsutil_stops: "Normally gsutil stops at the first error. The -f option causes\\nit to continue when it encounters errors. If some of the ACLs\\ncouldn't be set, gsutil's exit status will be non-zero even if\\nthis flag is set. This option is implicitly set when running\\n\\\"gsutil -m acl...\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}