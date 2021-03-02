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
    _newcpgreport \
      ~{if (window) then "-window" else ""} \
      ~{if (shift) then "-shift" else ""} \
      ~{if (min_len) then "-minlen" else ""} \
      ~{if (min_oe) then "-minoe" else ""} \
      ~{if (min_pc) then "-minpc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    window: "integer    [100] Window size (Integer 1 or more)"
    shift: "integer    [1] Shift increment (Integer 1 or more)"
    min_len: "integer    [200] Minimum Length (Integer 1 or more)"
    min_oe: "float      [0.6] Minimum observed/expected (Number from\\n0.000 to 10.000)"
    min_pc: "float      [50.] Minimum percentage (Number from 0.000\\nto 100.000)"
  }
  output {
    File out_stdout = stdout()
  }
}