version 1.0

task GenPoHoLandscape {
  input {
    Boolean? p_q_h
  }
  command <<<
    genPoHoLandscape \
      ~{if (p_q_h) then "-99999999999999999" else ""}
  >>>
  parameter_meta {
    p_q_h: "P:2 Q2 H-3"
  }
  output {
    File out_stdout = stdout()
  }
}