version 1.0

task NebulizerListLibraries {
  input {
    Boolean? use_long_format
    String galaxy
    File? path
  }
  command <<<
    nebulizer list_libraries \
      ~{galaxy} \
      ~{path} \
      ~{true="-l" false="" use_long_format}
  >>>
  parameter_meta {
    use_long_format: "use a long listing format that includes ids, descriptions, file sizes, dbkeys and paths)"
    galaxy: ""
    path: ""
  }
}