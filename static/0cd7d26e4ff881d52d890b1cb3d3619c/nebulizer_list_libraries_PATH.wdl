version 1.0

task NebulizerListLibrariesPATH {
  input {
    Boolean lL
  }
  command <<<
    nebulizer list_libraries PATH \
      ~{true="-l" false="" lL}
  >>>
}