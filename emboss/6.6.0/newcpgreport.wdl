version 1.0

task Newcpgreport {
  input {
    Boolean? window
    Boolean? shift
    Boolean? min_len
    Boolean? min_oe
    Boolean? min_pc
  }
  command <<<
    newcpgreport \
      ~{true="-window" false="" window} \
      ~{true="-shift" false="" shift} \
      ~{true="-minlen" false="" min_len} \
      ~{true="-minoe" false="" min_oe} \
      ~{true="-minpc" false="" min_pc}
  >>>
  parameter_meta {
    window: "integer    [100] Window size (Integer 1 or more)"
    shift: "integer    [1] Shift increment (Integer 1 or more)"
    min_len: "integer    [200] Minimum Length (Integer 1 or more)"
    min_oe: "float      [0.6] Minimum observed/expected (Number from 0.000 to 10.000)"
    min_pc: "float      [50.] Minimum percentage (Number from 0.000 to 100.000)"
  }
}