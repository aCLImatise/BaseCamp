version 1.0

task Galaxybuildobjects {
  input {
    File? object_store_config
    File? export
    String? export_type
  }
  command <<<
    galaxy_build_objects \
      ~{if defined(object_store_config) then ("--object-store-config " +  '"' + object_store_config + '"') else ""} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""} \
      ~{if defined(export_type) then ("--export-type " +  '"' + export_type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-data:20.9.1--py_2"
  }
  parameter_meta {
    object_store_config: "object store configuration file"
    export: "export path"
    export_type: "export type (if needed)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}