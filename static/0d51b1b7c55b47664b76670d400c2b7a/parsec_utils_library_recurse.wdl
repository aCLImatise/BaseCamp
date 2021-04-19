version 1.0

task ParsecUtilsLibraryRecurse {
  input {
    File? path
    String library_id
  }
  command <<<
    parsec utils library_recurse \
      ~{library_id} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    path: "Folder path to filter on (otherwise root of repo)"
    library_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}