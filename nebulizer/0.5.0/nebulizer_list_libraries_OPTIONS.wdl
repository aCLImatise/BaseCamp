version 1.0

task NebulizerListLibrariesOPTIONS {
  input {
    Boolean lL
  }
  command <<<
    nebulizer list_libraries OPTIONS \
      ~{true="-l" false="" lL}
  >>>
}