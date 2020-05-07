version 1.0

task NebulizerListLibrariesGALAXY {
  input {
    Boolean lL
  }
  command <<<
    nebulizer list_libraries GALAXY \
      ~{true="-l" false="" lL}
  >>>
}