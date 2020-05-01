version 1.0

task NwReroot {
  input {
    Boolean dD
    Boolean lL
    Boolean sS
  }
  command <<<
    nw_reroot \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{true="-s" false="" sS}
  >>>
}