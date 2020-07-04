version 1.0

task NwTrim {
  input {
    Boolean? ah
  }
  command <<<
    nw_trim \
      ~{true="-ah" false="" ah}
  >>>
  parameter_meta {
    ah: ""
  }
}