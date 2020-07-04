version 1.0

task Taxmapper {
  input {
    Boolean? v
  }
  command <<<
    taxmapper \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}