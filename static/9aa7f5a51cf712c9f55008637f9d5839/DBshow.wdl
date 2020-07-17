version 1.0

task DBshow {
  input {
    Boolean? unq_uq
  }
  command <<<
    DBshow \
      ~{true="-unqUQ" false="" unq_uq}
  >>>
  parameter_meta {
    unq_uq: ""
  }
}