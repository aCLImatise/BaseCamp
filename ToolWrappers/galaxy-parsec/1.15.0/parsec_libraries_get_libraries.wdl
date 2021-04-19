version 1.0

task ParsecLibrariesGetLibraries {
  input {
    String? library_id
    String? name
    Boolean? deleted
    String both_dot
  }
  command <<<
    parsec libraries get_libraries \
      ~{both_dot} \
      ~{if defined(library_id) then ("--library_id " +  '"' + library_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (deleted) then "--deleted" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    library_id: "filter for library by library id"
    name: "If ``name`` is set and multiple names match the given\\nname, all the libraries matching the argument will be\\nreturned"
    deleted: "If ``False`` (the default), return only non-deleted\\nlibraries. If ``True``, return only deleted libraries. If\\n``None``, return both deleted and non-deleted libraries."
    both_dot: "Output:\\nlist of dicts each containing basic information about a library"
  }
  output {
    File out_stdout = stdout()
  }
}