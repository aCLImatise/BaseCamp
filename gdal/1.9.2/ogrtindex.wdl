version 1.0

task Ogrtindex {
  input {
    Boolean? accept_different_schemas
    String? lnum
  }
  command <<<
    ogrtindex \
      ~{true="-accept_different_schemas" false="" accept_different_schemas} \
      ~{if defined(lnum) then ("-lnum " +  '"' + lnum + '"') else ""}
  >>>
  parameter_meta {
    accept_different_schemas: ": by default ogrtindex checks that all layers inserted into the index have the same attribute schemas. If you specify this option, this test will be disabled. Be aware that resulting index may be incompatible with MapServer!"
    lnum: ""
  }
}