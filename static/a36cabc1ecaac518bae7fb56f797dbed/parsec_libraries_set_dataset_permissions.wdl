version 1.0

task ParsecLibrariesSetDatasetPermissions {
  input {
    String? access_in
    String? modify_in
    String? manage_in
    String dataset_id
  }
  command <<<
    parsec libraries set_dataset_permissions \
      ~{dataset_id} \
      ~{if defined(access_in) then ("--access_in " +  '"' + access_in + '"') else ""} \
      ~{if defined(modify_in) then ("--modify_in " +  '"' + modify_in + '"') else ""} \
      ~{if defined(manage_in) then ("--manage_in " +  '"' + manage_in + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    access_in: "list of role ids"
    modify_in: "list of role ids"
    manage_in: "list of role ids"
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}