version 1.0

task ParsecDatatypesGetDatatypes {
  input {
    Boolean? extension_only
    Boolean? upload_only
  }
  command <<<
    parsec datatypes get_datatypes \
      ~{if (extension_only) then "--extension_only" else ""} \
      ~{if (upload_only) then "--upload_only" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    extension_only: "Return only the extension rather than the datatype name"
    upload_only: "Whether to return only datatypes which can be uploaded"
  }
  output {
    File out_stdout = stdout()
  }
}