version 1.0

task ParsecLibrariesShowLibrary {
  input {
    Boolean? contents
    String library_id
  }
  command <<<
    parsec libraries show_library \
      ~{library_id} \
      ~{if (contents) then "--contents" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    contents: "whether to get contents of the library (rather than just the\\nlibrary details)"
    library_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}