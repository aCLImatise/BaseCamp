version 1.0

task ParsecLibrariesUpdateLibraryDataset {
  input {
    String? file_ext
    String? genome_build
    String? misc_info
    String? name
    String? tags
    String dataset_id
  }
  command <<<
    parsec libraries update_library_dataset \
      ~{dataset_id} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if defined(genome_build) then ("--genome_build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(misc_info) then ("--misc_info " +  '"' + misc_info + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    file_ext: "Replace library dataset extension (must exist in the\\nGalaxy registry)"
    genome_build: "Replace library dataset genome build (dbkey)"
    misc_info: "Replace library dataset misc_info with given string"
    name: "Replace library dataset name with the given string"
    tags: "Replace library dataset tags with the given list"
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}