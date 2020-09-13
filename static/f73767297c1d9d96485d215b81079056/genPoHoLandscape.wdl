version 1.0

task GenPoHoLandscape {
  input {
    Boolean? nan
    Boolean? p_q_h
  }
  command <<<
    genPoHoLandscape \
      ~{if (nan) then "-nan" else ""} \
      ~{if (p_q_h) then "-99999999999999999" else ""}
  >>>
  parameter_meta {
    nan: "0      0"
    p_q_h: "P:2 Q2 H-3"
  }
  output {
    File out_stdout = stdout()
  }
}