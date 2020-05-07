version 1.0

task NwTopology {
  input {
    Boolean bB
    Boolean iI
    Boolean lL
  }
  command <<<
    nw_topology \
      ~{true="-b" false="" bB} \
      ~{true="-I" false="" iI} \
      ~{true="-L" false="" lL}
  >>>
}