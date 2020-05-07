version 1.0

task Ogrtindex {
  input {
    Boolean acceptAcceptDifferentSchemas
  }
  command <<<
    ogrtindex \
      ~{true="-accept_different_schemas" false="" acceptAcceptDifferentSchemas}
  >>>
}